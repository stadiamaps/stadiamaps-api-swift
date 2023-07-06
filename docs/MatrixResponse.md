# MatrixResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | An identifier to disambiguate requests (echoed by the server). | [optional] 
**sources** | [[Coordinate]] | The list of starting locations | 
**targets** | [[Coordinate]] | The list of ending locations | 
**sourcesToTargets** | [[MatrixDistance]] | The matrix of starting and ending locations, along with the computed distance and travel time. The array is row-ordered. This means that the time and distance from the first location to all others forms the first row of the array, followed by the time and distance from the second source location to all target locations, etc. | 
**warnings** | [Warning] |  | [optional] 
**units** | [**ValhallaLongUnits**](ValhallaLongUnits.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


