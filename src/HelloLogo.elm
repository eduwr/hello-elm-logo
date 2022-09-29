module HelloLogo exposing (helloLogo)

import Html exposing (Html, div)
import Msg exposing (Msg(..))
import Svg exposing (Svg, polygon, svg)
import Svg.Attributes exposing (fill, height, points, stroke, strokeWidth, viewBox, width)


type alias Polygon =
    { id : Int
    , coord : String
    , color : String
    }


type alias PolygonList =
    List Polygon


list : PolygonList
list =
    [ { id = 1, coord = "0,0 150,150 0,300", color = "gray" }
    , { id = 2, coord = "0,300 150,150 300,300", color = "lightblue" }
    , { id = 3, coord = "0,0 150,0 225,75 75,75", color = "green" }
    , { id = 4, coord = "75,75 225,75 150,150", color = "orange" }
    , { id = 5, coord = "150,150 225,75 300,150 225,225", color = "green" }
    , { id = 5, coord = "225,225 300,150 300,300", color = "orange" }
    , { id = 6, coord = "300,0 150,0 300,150", color = "lightblue" }
    ]


helloLogo : Int -> Html Msg
helloLogo model =
    div []
        [ svg
            [ width "300"
            , height "300"
            , viewBox "0 0 300 300"
            ]
            (buildPolygonList list)
        ]


buildPolygon : Polygon -> Svg msg
buildPolygon { coord, color } =
    polygon
        [ points coord
        , fill color
        , stroke "white"
        , strokeWidth "10"
        ]
        []


buildPolygonList : PolygonList -> List (Svg msg)
buildPolygonList polygons =
    List.map buildPolygon polygons
