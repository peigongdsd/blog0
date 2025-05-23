--------------------------------------------------------------------------------
{-# LANGUAGE OverloadedStrings #-}

import Control.Monad ((>=>))
import Data.ByteString qualified as DB8
import Data.ByteString.Lazy.Char8 as BL8 (ByteString, pack, readFile, unpack, writeFile)
import Data.Map qualified as M
import Data.Monoid (mappend)
import Data.Text qualified as T
import Hakyll
import Hakyll.Core.Compiler
import Network.URI.Encode qualified as URI (encode)
import System.IO
import System.Process
import Text.Pandoc.Definition
import Text.Pandoc.Extensions
import Text.Pandoc.Options
import Text.Pandoc.Walk (walk, walkM)

--------------------------------------------------------------------------------

readerOpts :: ReaderOptions
readerOpts = def {readerExtensions = extensions}
  where
    extensions =
      foldr
        enableExtension
        pandocExtensions
        [ Ext_tex_math_dollars,
          Ext_tex_math_double_backslash,
          Ext_smart,
          Ext_latex_macros,
          Ext_emoji,
          Ext_inline_code_attributes,
          Ext_abbreviations
        ]

writerOpts :: WriterOptions
writerOpts = def {writerHTMLMathMethod = MathJax ""}

compileLaTeX :: ByteString -> Compiler ByteString
compileLaTeX d =
  unsafeCompiler $
    withFile
      "temp-pdflatex.out"
      WriteMode
      ( \hout ->
          withFile
            "temp-pdflatex.err"
            WriteMode
            ( \herr -> do
                BL8.writeFile "temp-TeX.tex" d
                BL8.writeFile "temp-TeX.pdf" ""
                (_, _, _, hp) <-
                  createProcess
                    . (\x -> x {std_out = UseHandle hout, std_err = UseHandle herr})
                    . proc "pdflatex"
                    $ [ "-no-parse-first-line",
                        "-halt-on-error",
                        "-interaction=nonstopmode",
                        "temp-TeX.tex"
                      ]
                code <- waitForProcess hp
                BL8.readFile "temp-TeX.pdf"
            )
      )

debugOutput :: ByteString -> Compiler ByteString
debugOutput d = unsafeCompiler $ do
  print . take 50 . unpack $ d
  return d

rawLaTexFilterMd :: Block -> Compiler Block
rawLaTexFilterMd (CodeBlock (id, "rawlatex" : extraClasses, namevals) contents) =
  (imageBlock . T.pack . ("data:image/svg+xml;utf8," ++) . URI.encode . filter (/= '\n') . itemBody <$>) $
    makeItem contents
      >>= loadAndApplyTemplate (fromFilePath "templates/rawLaTeX.tex") (bodyField "body") . (T.unpack <$>)
      >>= withItemBody
        ( return . pack
            >=> compileLaTeX
            >=> unixFilterLBS "pdftocairo" ["-svg", "-noshrink", "-", "-"]
            >=> return . unpack
        )
  where
    imageBlock fname = Para [Image (id, "rawlatex" : extraClasses, namevals) [] (fname, "")]
rawLaTexFilterMd x = return x

pandocCompilerFinal :: Compiler (Item String)
pandocCompilerFinal =
  pandocCompilerWithTransformM readerOpts writerOpts $ walkM rawLaTexFilterMd

main :: IO ()
main = hakyll $ do
  match "assets/*" $ do
    route idRoute
    compile copyFileCompiler

  match "css/*" $ do
    route idRoute
    compile compressCssCompiler

  match (fromList ["about.markdown", "contact.markdown"]) $ do
    route $ setExtension "html"
    compile $
      pandocCompiler
        >>= loadAndApplyTemplate "templates/default.html" defaultContext
        >>= relativizeUrls

  match "posts/*" $ do
    route $ setExtension "html"
    compile $
      pandocCompilerFinal
        >>= loadAndApplyTemplate "templates/post.html" postCtx
        >>= loadAndApplyTemplate "templates/default.html" postCtx
        >>= relativizeUrls

  match "notes/*" $ do
    route $ setExtension "html"
    compile $
      pandocCompilerFinal
        >>= loadAndApplyTemplate "templates/post.html" postCtx
        >>= loadAndApplyTemplate "templates/default.html" postCtx
        >>= relativizeUrls

  create ["notes.html"] $ do
    route $ setExtension "html"
    compile $ do
      posts <- loadAll "notes/*"
      let archiveCtx =
            listField "posts" postCtx (return posts)
              `mappend` constField "title" "Notes"
              `mappend` defaultContext

      makeItem ""
        >>= loadAndApplyTemplate "templates/notes.html" archiveCtx
        >>= loadAndApplyTemplate "templates/default.html" archiveCtx
        >>= relativizeUrls

  create ["archive.html"] $ do
    route idRoute
    compile $ do
      posts <- recentFirst =<< loadAll "posts/*"
      let archiveCtx =
            listField "posts" postCtx (return posts)
              `mappend` constField "title" "Archives"
              `mappend` defaultContext

      makeItem ""
        >>= loadAndApplyTemplate "templates/archive.html" archiveCtx
        >>= loadAndApplyTemplate "templates/default.html" archiveCtx
        >>= relativizeUrls

  match "index.html" $ do
    route idRoute
    compile $ do
      posts <- recentFirst =<< loadAll "posts/*"
      let indexCtx =
            listField "posts" postCtx (return posts)
              `mappend` defaultContext

      getResourceBody
        >>= applyAsTemplate indexCtx
        >>= loadAndApplyTemplate "templates/default.html" indexCtx
        >>= relativizeUrls

  match "test.html" $ do
    route idRoute

  match "templates/*" $ compile templateBodyCompiler

postCtx :: Context String
postCtx =
  dateField "date" "%B %e, %Y"
    `mappend` defaultContext
