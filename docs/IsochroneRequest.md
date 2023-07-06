# IsochroneRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | An identifier to disambiguate requests (echoed by the server). | [optional] 
**locations** | [Coordinate] |  | 
**costing** | [**IsochroneCostingModel**](IsochroneCostingModel.md) |  | 
**costingOptions** | [**CostingOptions**](CostingOptions.md) |  | [optional] 
**contours** | [Contour] |  | 
**polygons** | **Bool** | If true, the generated GeoJSON will use polygons. The default is to use LineStrings. Polygon output makes it easier to render overlapping areas in some visualization tools (such as MapLibre renderers). | [optional] [default to false]
**denoise** | **Double** | A value in the range [0, 1] which will be used to smooth out or remove smaller contours. A value of 1 will only return the largest contour for a given time value. A value of 0.5 drops any contours that are less than half the area of the largest contour in the set of contours for that same time value. | [optional] [default to 1]
**generalize** | **Double** | The value in meters to be used as a tolerance for Douglas-Peucker generalization. | [optional] [default to 200.0]
**showLocations** | **Bool** | If true, then the output GeoJSON will include the input locations as two MultiPoint features: one for the exact input coordinates, and a second for the route network node location that the point was snapped to. | [optional] [default to false]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


