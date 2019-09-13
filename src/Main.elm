module Main exposing (..)

import Html exposing (Html, text, div, h1, h2, p, img)
import Html.Attributes exposing (src)


---- MODEL ----


type alias Model =
    {}


init : ( Model, Cmd Msg )
init =
    ( {}, Cmd.none )



---- UPDATE ----


type Msg
    = NoOp


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( model, Cmd.none )



---- VIEW ----


view : Model -> Html Msg
view model =
    div []
        [ img [ src "/place.png" ] []
        , h1 [] [ text "Prefer on Elm!" ]
        , h2 [] [ text "This is the FTV" ]
        , p [] [ text "*Flip Trough Movies (v1.0.0)" ]

        --, p [] [ text "- Currently just an image - but the imdb-api should be installed(.. ?), maybe" ]
        ]



---- PROGRAM ----


main : Program Never Model Msg
main =
    Html.program
        { view = view
        , init = init
        , update = update
        , subscriptions = always Sub.none
        }
