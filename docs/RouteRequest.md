# RouteRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | An identifier to disambiguate requests (echoed by the server). | [optional] 
**locations** | [RoutingWaypoint] |  | 
**costing** | [**CostingModel**](CostingModel.md) |  | 
**costingOptions** | [**CostingOptions**](CostingOptions.md) |  | [optional] 
**avoidLocations** | [RoutingWaypoint] |  | [optional] 
**avoidPolygons** | [[[Double]]] | One or multiple exterior rings of polygons in the form of nested JSON arrays. Roads intersecting these rings will be avoided during path finding. Open rings will be closed automatically. | [optional] 
**directionsOptions** | [**DirectionsOptions**](DirectionsOptions.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


