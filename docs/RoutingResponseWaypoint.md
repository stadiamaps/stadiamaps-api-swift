# RoutingResponseWaypoint

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**lat** | **Double** | The latitude of a point in the shape. | 
**lon** | **Double** | The longitude of a point in the shape. | 
**type** | **String** | A &#x60;break&#x60; represents the start or end of a leg, and allows reversals. A &#x60;through&#x60; location is an intermediate waypoint that must be visited between &#x60;break&#x60;s, but at which reversals are not allowed. A &#x60;via&#x60; is similar to a &#x60;through&#x60; except that reversals are allowed. A &#x60;break_through&#x60; is similar to a &#x60;break&#x60; in that it can be the start/end of a leg, but does not allow reversals. | [optional] [default to ._break]
**originalIndex** | **Int** | The original index of the location (locations may be reordered for optimized routes) | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


