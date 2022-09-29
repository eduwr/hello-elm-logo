module HelloWorld exposing (helloWorld)

import Html exposing (Html, a, button, code, div, h1, p, text)
import Html.Attributes exposing (href)
import Html.Events exposing (onClick)
import Msg exposing (Msg(..))


helloWorld : Int -> Html Msg
helloWorld model =
    div []
        [ h1 [] [ text "Hello, Vite + Elm!" ]
        ]
