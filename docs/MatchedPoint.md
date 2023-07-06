# MatchedPoint

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**lat** | **Double** | The latitude of the matched point. | 
**lon** | **Double** | The longitude of the matched point. | 
**type** | **String** |  | 
**edgeIndex** | **Int** | The index of the edge in the list of &#x60;edges&#x60;. This key will be missing if the point is unmatched. | [optional] 
**beginRouteDiscontinuity** | **Bool** | If true, this match result is the begin location of a route discontinuity. | [optional] [default to false]
**endRouteDiscontinuity** | **Bool** | If true, this match result is the end location of a route discontinuity. | [optional] [default to false]
**distanceAlongEdge** | **Double** | The distance along the associated edge for this matched point, expressed as a value between 0 and 1. For example, if the matched point is halfway along the edge, then the value will be 0.5. This key will be absent if the point is unmatched. | [optional] 
**distanceFromTracePoint** | **Double** | The distance in meters from the trace point to the matched point. This key will be absent if the point is unmatched. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


