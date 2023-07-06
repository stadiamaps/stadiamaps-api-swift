# OptimizedRouteRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | An identifier to disambiguate requests (echoed by the server). | [optional] 
**locations** | [Coordinate] | The list of locations. The first and last are assumed to be the start and end points, and all intermediate points are locations that you want to visit along the way. | 
**costing** | [**MatrixCostingModel**](MatrixCostingModel.md) |  | 
**costingOptions** | [**CostingOptions**](CostingOptions.md) |  | [optional] 
**directionsOptions** | [**DirectionsOptions**](DirectionsOptions.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


