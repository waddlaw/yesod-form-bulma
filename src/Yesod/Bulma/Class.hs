{-# LANGUAGE OverloadedStrings #-}
module Yesod.Bulma.Class
  ( YesodBulma
  , urlBulmaCss
  , urlBulmaExCheckRadio
  , urlFontawesomeJs
  ) where

import           Data.Text  (Text)
import           Yesod.Core

class YesodBulma a where
  urlBulmaCss :: a -> Either (Route a) Text
  urlBulmaCss _ = Right "https://cdnjs.cloudflare.com/ajax/libs/bulma/0.7.1/css/bulma.min.css"

  urlBulmaExCheckRadio :: a -> Either (Route a) Text
  urlBulmaExCheckRadio _ = Right "https://cdn.jsdelivr.net/npm/bulma-extensions@1.0.30/bulma-checkradio/dist/bulma-checkradio.min.css"

  urlFontawesomeJs :: a -> Either (Route a) Text
  urlFontawesomeJs _ = Right "https://use.fontawesome.com/releases/v5.2.0/js/all.js"
