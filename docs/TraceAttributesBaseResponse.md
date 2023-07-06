# TraceAttributesBaseResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**edges** | [TraceEdge] | The list of edges matched along the path. | [optional] 
**admins** | [AdminRegion] | The set of administrative regions matched along the path. Rather than repeating this information for every end node, the admins in this list are referenced by index. | [optional] 
**matchedPoints** | [MatchedPoint] | List of match results when using the map_snap shape match algorithm. There is a one-to-one correspondence with the input set of latitude, longitude coordinates and this list of match results. | [optional] 
**osmChangeset** | **Int** |  | [optional] 
**shape** | **String** | The encoded polyline (https://developers.google.com/maps/documentation/utilities/polylinealgorithm) of the matched path. | [optional] 
**confidenceScore** | **Double** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


