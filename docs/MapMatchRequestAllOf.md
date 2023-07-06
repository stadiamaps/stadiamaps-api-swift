# MapMatchRequestAllOf

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**beginTime** | **Int** | The timestamp at the start of the trace. Combined with &#x60;durations&#x60;, this provides a way to include timing information for an &#x60;encoded_polyline&#x60; trace. | [optional] 
**durations** | **Int** | A list of durations (in seconds) between each successive pair of points in a polyline. | [optional] 
**useTimestamps** | **Bool** | If true, the input timestamps or durations should be used when computing elapsed time for each edge along the matched path rather than the routing algorithm estimates. | [optional] [default to false]
**traceOptions** | [**MapMatchTraceOptions**](MapMatchTraceOptions.md) |  | [optional] 
**linearReferences** | **Bool** | If true, the response will include a &#x60;linear_references&#x60; value that contains an array of base64-encoded [OpenLR location references](https://www.openlr-association.com/fileadmin/user_upload/openlr-whitepaper_v1.5.pdf), one for each graph edge of the road network matched by the trace. | [optional] [default to false]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


