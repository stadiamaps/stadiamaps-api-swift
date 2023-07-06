# TraceEdge

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**names** | **[String]** | The name(s) of the road at this edge, if any. | [optional] 
**length** | **Double** | The length of this edge in &#x60;units&#x60;. | [optional] 
**speed** | **Int** | The speed of this edge in &#x60;units&#x60;/hr, in terms of average/free-flow speed for routing purposes. This is affected by any number of factors such as the road service, vehicle type, etc. and not just the posted speed limits. | [optional] 
**roadClass** | [**RoadClass**](RoadClass.md) |  | [optional] 
**beginHeading** | **Int** | The direction at the beginning of an edge. The units are degrees clockwise from north. | [optional] 
**endHeading** | **Int** | The direction at the end of an edge. The units are degrees clockwise from north. | [optional] 
**beginShapeIndex** | **Int** | Index into the list of shape points for the start of the edge. | [optional] 
**endShapeIndex** | **Int** | Index into the list of shape points for the end of the edge. | [optional] 
**traversability** | [**Traversability**](Traversability.md) |  | [optional] 
**use** | [**EdgeUse**](EdgeUse.md) |  | [optional] 
**toll** | **Bool** | True if the edge has a toll. | [optional] 
**unpaved** | **Bool** | True if the edge has rough payment. | [optional] 
**tunnel** | **Bool** | True if the edge has a tunnel. | [optional] 
**bridge** | **Bool** | True if the edge has a bridge. | [optional] 
**roundabout** | **Bool** | True if the edge has a roundabout. | [optional] 
**internalIntersection** | **Bool** | True if the edge has an internal intersection. | [optional] 
**driveOnRight** | **Bool** | True if the edge is in an area where you must drive on the right side of the road. | [optional] 
**surface** | **String** | The type of surface for the edge. | [optional] 
**sign** | [**EdgeSign**](EdgeSign.md) |  | [optional] 
**travelMode** | [**TravelMode**](TravelMode.md) |  | [optional] 
**vehicleType** | **String** |  | [optional] 
**pedestrianType** | **String** |  | [optional] 
**bicycleType** | **String** |  | [optional] 
**transitType** | **String** |  | [optional] 
**id** | **Int64** |  | [optional] 
**wayId** | **Int64** | The way identifier of the edge in OSM. | [optional] 
**weightedGrade** | **Double** | The weighted grade factor. Valhalla manufactures a weighted grade from elevation data. It is a measure used for hill avoidance in routing - sort of a relative energy use along an edge. But since an edge in Valhalla can possibly go up and down over several hills it might not equate to what you would normally think of as grade. | [optional] 
**maxUpwardGrade** | **Int** | The maximum upward slope. A value of 32768 indicates no elevation data is available for this edge. | [optional] 
**maxDownwardGrade** | **Int** | The maximum downward slope. A value of 32768 indicates no elevation data is available for this edge. | [optional] 
**meanElevation** | **Int** | The mean elevation along the edge. Units are meters by default. If the &#x60;units&#x60; are specified as miles, then the mean elevation is returned in feet. A value of 32768 indicates no elevation data is available for this edge. | [optional] 
**laneCount** | **Int** | The number of lanes for this edge. | [optional] 
**cycleLane** | **String** | The type of cycle lane (if any) along this edge. | [optional] 
**bicycleNetwork** | **Int** | The type of bicycle network, if any. This is an integer comprised of constants bitwise or&#39;d together. For example, a route that&#39;s part of both a local and mountain network would have a value of 12. 1 - National 2 - Regional 4 - Local 8 - Mountain | [optional] 
**sacScale** | **Int** | The difficulty of the hiking trail according to the SAC scale. 0 - No Sac Scale 1 - Hiking 2 - Mountain hiking 3 - Demanding mountain hiking 4 - Alpine hiking 5 - Demanding alpine hiking 6 - Difficult alpine hiking | [optional] 
**sidewalk** | **String** |  | [optional] 
**density** | **Int** |  | [optional] 
**speedLimit** | **AnyCodable** | The speed limit along the edge measured in &#x60;units&#x60;/hr. This may be either an integer or the string \&quot;unlimited\&quot; if speed limit data is available. If absent, there is no speed limit data available. | [optional] 
**truckSpeed** | **Int** | The truck speed of this edge in &#x60;units&#x60;/hr, in terms of average/free-flow speed for routing purposes. This is affected by any number of factors such as the road service, vehicle type, etc. and not just the posted speed limits. | [optional] 
**truckRoute** | **Bool** | True if the edge is part of a truck route/network. | [optional] 
**endNode** | [**EndNode**](EndNode.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


