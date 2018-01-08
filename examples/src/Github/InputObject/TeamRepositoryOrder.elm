-- Do not manually edit this file, it was auto-generated by Graphqelm
-- npm package version 1.0.0
-- Target elm package version 4.0.1
-- https://github.com/dillonkearns/graphqelm


module Github.InputObject.TeamRepositoryOrder exposing (..)

import Github.Enum.OrderDirection
import Github.Enum.TeamRepositoryOrderField
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


{-| Encode a TeamRepositoryOrder into a value that can be used as an argument.
-}
encode : TeamRepositoryOrder -> Value
encode input =
    Encode.maybeObject
        [ ( "field", Encode.enum Github.Enum.TeamRepositoryOrderField.toString input.field |> Just ), ( "direction", Encode.enum Github.Enum.OrderDirection.toString input.direction |> Just ) ]


{-| Type for the TeamRepositoryOrder input object.
-}
type alias TeamRepositoryOrder =
    { field : Github.Enum.TeamRepositoryOrderField.TeamRepositoryOrderField, direction : Github.Enum.OrderDirection.OrderDirection }
