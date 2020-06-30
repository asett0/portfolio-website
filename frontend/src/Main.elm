module Main exposing (main)

import Browser
import Data exposing (blue, darkBlue, lightBlue, offWhite)
import Element
import Element.Background as Background
import Element.Border as Border
import Element.Font as Font
import Element.Input as Input
import Html exposing (Html)



-- MSG


type Msg
    = Msg



-- MODEL


type alias Model =
    Int



-- MAIN


main : Program () Model Msg
main =
    Browser.element
        { init = init
        , update = update
        , view = view
        , subscriptions = subscriptions
        }



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions _ =
    Sub.none



-- INIT


init : () -> ( Model, Cmd Msg )
init _ =
    ( 0
    , Cmd.none
    )



-- UPDATE


update : Msg -> Model -> ( Model, Cmd Msg )
update _ model =
    ( model, Cmd.none )



-- VIEW


view : Model -> Html Msg
view _ =
    Element.layout [ Background.color darkBlue, Font.color offWhite, Font.family [ Font.sansSerif ] ] <|
        Element.column
            [ Element.centerY
            , Element.centerX
            , Element.spacing 30
            , Element.width
                (Element.fill
                    |> Element.maximum 600
                )
            ]
            [ Element.el [ Element.centerX, Font.bold, Font.size 60 ] (Element.text "Welcome")
            , Element.paragraph
                [ Font.italic ]
                [ Element.text "Hi, my names Amit and I’m a data scientist and software developer from Perth, Australia. Welcome to my personal website! \nHere you’ll find things that I’ve made and my personal blog where I write about topics I’m interesed in. Have a look around, get cosy, chill out and feel free to contact me if you want to have a chat. \n Cheers." ]
            , Input.button
                [ Element.focused [], Element.mouseDown [ Border.color lightBlue ], Element.mouseOver [ Border.color offWhite ], Border.color blue, Border.width 2, Background.color offWhite, Font.color darkBlue, Element.centerX, Element.paddingXY 20 10 ]
                { onPress = Nothing, label = Element.text "Enter" }
            ]
