module Main exposing (main)

import Html exposing (..)
import Html.Attributes exposing (..)


pluralize singular plural quantity =
    let
        quantityString =
            String.fromInt quantity

        prefix =
            quantityString ++ " "
    in
    if quantity == 1 then
        prefix ++ singular

    else
        prefix ++ plural


answer =
    List.map (\str -> String.toUpper str ++ "!") [ "zap", "nip", "mop" ]


banner : Html msg
banner =
    div [ class "banner" ]
        [ div [ class "container" ]
            [ h1 [ class "logo-font" ] [ text "conduit" ]
            , p [] [ text "A place to share your knowledge." ]
            ]
        ]


feed : Html msg
feed =
    div [ class "feed-toggle" ] [ text "(In the future we'll display a feed of articles here!)" ]


main : Html msg
main =
    div [ class "home-page" ]
        [ banner
        , div [ class "container page" ]
            [ div [ class "row" ]
                [ div [ class "col-md-9" ] [ feed ]
                , div [ class "col-md-3" ] []
                ]
            ]
        ]
