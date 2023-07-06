# RoutingWaypoint

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**lat** | **Double** | The latitude of a point in the shape. | 
**lon** | **Double** | The longitude of a point in the shape. | 
**type** | **String** | A &#x60;break&#x60; represents the start or end of a leg, and allows reversals. A &#x60;through&#x60; location is an intermediate waypoint that must be visited between &#x60;break&#x60;s, but at which reversals are not allowed. A &#x60;via&#x60; is similar to a &#x60;through&#x60; except that reversals are allowed. A &#x60;break_through&#x60; is similar to a &#x60;break&#x60; in that it can be the start/end of a leg, but does not allow reversals. | [optional] [default to ._break]
**heading** | **Int** | The preferred direction of travel when starting the route, in integer clockwise degrees from north. North is 0, south is 180, east is 90, and west is 270. | [optional] 
**headingTolerance** | **Int** | The tolerance (in degrees) determining whether a street is considered the same direction. | [optional] [default to 60]
**minimumReachability** | **Int** | The minimum number of nodes that must be reachable for a given edge to consider that edge as belonging to a connected region. If a candidate edge has fewer connections, it will be considered a disconnected island. | [optional] [default to 50]
**radius** | **Int** | The distance (in meters) to look for candidate edges around the location for purposes of snapping locations to the route graph. If there are no candidates within this distance, the closest candidate within a reasonable search distance will be used. This is subject to clamping by internal limits. | [optional] [default to 0]
**rankCandidates** | **Bool** | If true, candidates will be ranked according to their distance from the target location as well as other factors. If false, candidates will only be ranked using their distance from the target. | [optional] [default to true]
**preferredSide** | **String** | If the location is not offset from the road centerline or is closest to an intersection, this option has no effect. Otherwise, the preferred side of street is used to determine whether or not the location should be visited from the same, opposite or either side of the road with respect to the side of the road the given locale drives on. | [optional] 
**nodeSnapTolerance** | **Int** | During edge correlation this is the tolerance (in meters) used to determine whether or not to snap to the intersection rather than along the street, if the snap location is within this distance from the intersection, the intersection is used instead. | [optional] [default to 5]
**streetSideTolerance** | **Int** | A tolerance in meters from the edge centerline used for determining the side of the street that the location is on. If the distance to the centerline is less than this tolerance, no side will be inferred. Otherwise, the left or right side will be selected depending on the direction of travel. | [optional] [default to 5]
**streetSideMaxDistance** | **Int** | A tolerance in meters from the edge centerline used for determining the side of the street that the location is on. If the distance to the centerline is greater than this tolerance, no side will be inferred. Otherwise, the left or right side will be selected depending on the direction of travel. | [optional] [default to 1000]
**searchFilter** | [**RoutingWaypointAllOfSearchFilter**](RoutingWaypointAllOfSearchFilter.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


