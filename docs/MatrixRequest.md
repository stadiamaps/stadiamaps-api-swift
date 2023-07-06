# MatrixRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | An identifier to disambiguate requests (echoed by the server). | [optional] 
**sources** | [Coordinate] | The list of starting locations | 
**targets** | [Coordinate] | The list of ending locations | 
**costing** | [**MatrixCostingModel**](MatrixCostingModel.md) |  | 
**costingOptions** | [**CostingOptions**](CostingOptions.md) |  | [optional] 
**matrixLocations** | **Int** | Only applicable to one-to-many or many-to-one requests. This defaults to all locations. When specified explicitly, this option allows a partial result to be returned. This is basically equivalent to \&quot;find the closest/best locations out of the full set.\&quot; This can have a dramatic improvement for large requests. | [optional] 
**directionsOptions** | [**DirectionsOptions**](DirectionsOptions.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


