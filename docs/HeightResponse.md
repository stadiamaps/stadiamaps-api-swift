# HeightResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | An identifier to disambiguate requests (echoed by the server). | [optional] 
**shape** | [Coordinate] |  | [optional] 
**encodedPolyline** | **String** | The input polyline. | [optional] 
**height** | **[Int]** | The list of heights for each point, in meters. Present only if &#x60;range&#x60; is &#x60;false&#x60;. Null values indicate missing data. | [optional] 
**rangeHeight** | [[Int]] | The list of ranges and heights for each point in the shape, where each entry is an array of length 2. Present only if &#x60;range&#x60; is &#x60;true&#x60;. In each pair, the first element represents the range or distance along the input locations. It is the cumulative distance along the previous coordinates in the shape up to the current coordinate. This value for the first coordinate in the shape will always be 0. The second element in the pair represents the height or elevation at the associated coordinate. The height is null if no height data exists for a given location. Both values are expressed in meters. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


