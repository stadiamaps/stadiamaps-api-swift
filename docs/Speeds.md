# Speeds

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**predicted** | **Bool** | Does this edge have predicted (historical) speed records? | [optional] 
**constrainedFlow** | **Int** | Speed when there is no traffic, in kph. | [optional] 
**freeFlow** | **Int** | Speed when there is heavy traffic, in kph. | [optional] 
**type** | **String** | The type of speed which is used when setting default speeds. When &#x60;tagged&#x60;, the explicit &#x60;max_speed&#x60; tags from OpenStreetMap are being used. When &#x60;classified&#x60;, the values are being inferred from the highway classification. | [optional] 
**_default** | **Int** | The default speed used for calculations. NOTE: Values greater than 250 are used for special cases and should not be treated as literal. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


