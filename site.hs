--------------------------------------------------------------------------------
{-# LANGUAGE OverloadedStrings #-}
import           Data.Monoid (mappend)
import           Hakyll
import           Hakyll.Core.Compiler
import           Text.Pandoc.Options
import           Text.Pandoc.Definition
import           Text.Pandoc.Walk (walk, walkM)
import           Text.Pandoc.Extensions
import qualified Data.Text as T
import           Control.Monad ((>=>))
import           Data.ByteString.Lazy.Char8  as BL8 (pack, unpack, writeFile, ByteString, readFile)
import qualified Network.URI.Encode as URI (encode)
import qualified Data.Map as M
import           System.Process
import           System.IO
import qualified Data.ByteString as DB8
--------------------------------------------------------------------------------
{-|
>>>:t bodyfield
Variable not in scope: bodyfield

|-}

readerOpts :: ReaderOptions
readerOpts = def { readerExtensions = extensions }
    where extensions = foldr enableExtension pandocExtensions [ 
            Ext_tex_math_dollars, 
            Ext_tex_math_double_backslash, 
            Ext_smart,
            Ext_latex_macros,
            Ext_emoji,
            Ext_inline_code_attributes, 
            Ext_abbreviations 
            ]

writerOpts :: WriterOptions
writerOpts = def { writerHTMLMathMethod = MathJax "" }

compileLaTeX :: ByteString -> Compiler ByteString
compileLaTeX d = unsafeCompiler $ 
    withFile "temp-pdflatex.out" WriteMode (\hout -> 
    withFile "temp-pdflatex.err" WriteMode (\herr -> do
    BL8.writeFile "temp-TeX.tex" d
    BL8.writeFile "temp-TeX.pdf" ""
    (_, _, _, hp) <- createProcess 
        . (\x -> x { std_out = UseHandle hout, std_err = UseHandle herr }) 
        . proc "pdflatex" $ [ 
        "-no-parse-first-line", 
        "-halt-on-error", 
        "-interaction=nonstopmode",
        "temp-TeX.tex" 
        ]
    code <- waitForProcess hp
    BL8.readFile "temp-TeX.pdf"))

debugOutput :: ByteString -> Compiler ByteString
debugOutput d = unsafeCompiler $ do
    print . take 50 . unpack $ d
    return d

rawLaTexFilterMd :: Block -> Compiler Block
rawLaTexFilterMd (CodeBlock (id, "rawlatex":extraClasses, namevals) contents) =
  (imageBlock . T.pack . ("data:image/svg+xml;utf8," ++) . URI.encode . filter (/= '\n') . itemBody <$>) $
    makeItem contents
     >>= loadAndApplyTemplate (fromFilePath "templates/rawLaTeX.tex") (bodyField "body") . (T.unpack <$>)
     >>= withItemBody (return . pack
                       >=> compileLaTeX
                       >=> unixFilterLBS "pdftocairo" ["-svg", "-noshrink", "-", "-"]
                       >=> return . unpack)
  where imageBlock fname = Para [Image (id, "rawlatex":extraClasses, namevals) [] (fname, "")]
rawLaTexFilterMd x = return x

pandocCompilerFinal :: Compiler (Item String)
pandocCompilerFinal =
  pandocCompilerWithTransformM readerOpts writerOpts $ walkM rawLaTexFilterMd

main :: IO ()
main = hakyll $ do
    match "assets/*" $ do
        route   idRoute
        compile copyFileCompiler

    match "css/*" $ do
        route   idRoute
        compile compressCssCompiler

    match (fromList ["about.markdown", "contact.markdown"]) $ do
        route   $ setExtension "html"
        compile $ pandocCompiler
            >>= loadAndApplyTemplate "templates/default.html" defaultContext
            >>= relativizeUrls

    match "posts/*" $ do
        route $ setExtension "html"
        compile $ pandocCompilerFinal
            >>= loadAndApplyTemplate "templates/post.html"    postCtx
            >>= loadAndApplyTemplate "templates/default.html" postCtx
            >>= relativizeUrls
 
    match "notes/*" $ do
        route $ setExtension "html"
        compile $ pandocCompilerFinal
            >>= loadAndApplyTemplate "templates/post.html"    postCtx
            >>= loadAndApplyTemplate "templates/default.html" postCtx
            >>= relativizeUrls


    create [ "notes.html" ] $ do
        route $ setExtension "html"
        compile $ do
            posts <- loadAll "notes/*"
            let archiveCtx =
                    listField "posts" postCtx (return posts) `mappend`
                    constField "title" "Notes"               `mappend`
                    defaultContext

            makeItem ""
                >>= loadAndApplyTemplate "templates/notes.html" archiveCtx
                >>= loadAndApplyTemplate "templates/default.html" archiveCtx
                >>= relativizeUrls

    create [ "archive.html" ] $ do
        route idRoute
        compile $ do
            posts <- recentFirst =<< loadAll "posts/*"
            let archiveCtx =
                    listField "posts" postCtx (return posts) `mappend`
                    constField "title" "Archives"            `mappend`
                    defaultContext

            makeItem ""
                >>= loadAndApplyTemplate "templates/archive.html" archiveCtx
                >>= loadAndApplyTemplate "templates/default.html" archiveCtx
                >>= relativizeUrls


    match "index.html" $ do
        route idRoute
        compile $ do
            posts <- recentFirst =<< loadAll "posts/*"
            let indexCtx =
                    listField "posts" postCtx (return posts) `mappend`
                    defaultContext

            getResourceBody
                >>= applyAsTemplate indexCtx
                >>= loadAndApplyTemplate "templates/default.html" indexCtx
                >>= relativizeUrls

    match "templates/*" $ compile templateBodyCompiler

postCtx :: Context String
postCtx =
    dateField "date" "%B %e, %Y" `mappend`
    defaultContext


