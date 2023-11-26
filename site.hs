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
import           Data.ByteString.Lazy.Char8 (pack, unpack)
import qualified Network.URI.Encode as URI (encode)
import qualified Data.Map as M
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

tikzCdFilter :: Block -> Compiler Block
tikzCdFilter (CodeBlock (id, "tikzpicture":extraClasses, namevals) contents) =
  (imageBlock . T.pack . ("data:image/svg+xml;utf8," ++) . URI.encode . filter (/= '\n') . itemBody <$>) $
    makeItem contents
     >>= loadAndApplyTemplate (fromFilePath "templates/tikz-cd.tex") (bodyField "body") . (T.unpack <$>)
     >>= withItemBody (return . pack
                       >=> unixFilterLBS "rubber-pipe" ["--pdf"]
                       >=> unixFilterLBS "pdftocairo" ["-svg", "-", "-"]
                       >=> return . unpack)
  where imageBlock fname = Para [Image (id, "tikzpicture":extraClasses, namevals) [] (fname, "")]
tikzCdFilter x = return x

pandocCompilerWithTikzCd :: Compiler (Item String)
pandocCompilerWithTikzCd =
  pandocCompilerWithTransformM readerOpts writerOpts $ walkM tikzCdFilter

main :: IO ()
main = hakyll $ do
    match "images/*" $ do
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
        compile $ pandocCompilerWithTikzCd
            >>= loadAndApplyTemplate "templates/post.html"    postCtx
            >>= loadAndApplyTemplate "templates/default.html" postCtx
            >>= relativizeUrls

    create ["archive.html"] $ do
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


