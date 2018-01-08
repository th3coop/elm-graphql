-- Do not manually edit this file, it was auto-generated by Graphqelm
-- npm package version 1.0.0
-- Target elm package version 4.0.1
-- https://github.com/dillonkearns/graphqelm


module Github.InputObject.AddProjectCardInput exposing (..)

import Github.InputObject
import Github.Interface
import Github.Object
import Github.Union
import Graphqelm.Builder.Argument as Argument exposing (Argument)
import Graphqelm.Builder.Object as Object
import Graphqelm.Encode as Encode exposing (Value)
import Graphqelm.FieldDecoder as FieldDecoder exposing (FieldDecoder)
import Graphqelm.OptionalArgument exposing (OptionalArgument(Absent))
import Graphqelm.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


{-| Encode a AddProjectCardInput into a value that can be used as an argument.
-}
encode : AddProjectCardInput -> Value
encode input =
    Encode.maybeObject
        [ ( "clientMutationId", Encode.string |> Encode.optional input.clientMutationId ), ( "projectColumnId", Encode.string input.projectColumnId |> Just ), ( "contentId", Encode.string |> Encode.optional input.contentId ), ( "note", Encode.string |> Encode.optional input.note ) ]


{-| Type for the AddProjectCardInput input object.
-}
type alias AddProjectCardInput =
    { clientMutationId : OptionalArgument String, projectColumnId : String, contentId : OptionalArgument String, note : OptionalArgument String }
