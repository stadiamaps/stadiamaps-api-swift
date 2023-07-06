# MapMatchTraceOptions

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**searchRadius** | **Int** | The search radius, in meters, when trying to match each trace point. | [optional] 
**gpsAccuracy** | **Double** | The accuracy of the GPS, in meters. | [optional] 
**breakageDistance** | **Double** | The breaking distance, in meters, between trace points. | [optional] 
**interpolationDistance** | **Double** | The interpolation distance, in meters, beyond which trace points are merged together. | [optional] 
**turnPenaltyFactor** | **Int** | Penalizes turns from one road segment to next. For a pedestrian trace, you may see a back-and-forth motion along the streets of your path with the default settings. Try increasing the turn penalty factor to 500 to reduce jitter in the output. Note that if GPS accuracy is already good, increasing this above the default will usually negatively affect the quality of map matching. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


