# LocateDetailedEdge

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sidewalkLeft** | **Bool** | Is there a sidewalk to the left of the edge? | [optional] 
**sidewalkRight** | **Bool** | Is there a sidewalk to the right of the edge? | [optional] 
**laneCount** | **Int** |  | [optional] 
**stopSign** | **Bool** | Is there a stop sign at end of the directed edge? | [optional] 
**sacScale** | **String** |  | [optional] 
**yieldSign** | **Bool** | Is there a yield sign at end of the directed edge? | [optional] 
**notThru** | **Bool** | Does the edge lead to a \&quot;no-through\&quot; region? | [optional] 
**forward** | **Bool** | Is the edge info forward? If false, then reverse is implied. | [optional] 
**endNode** | [**NodeId**](NodeId.md) |  | [optional] 
**truckRoute** | **Bool** | Is the edge part of a truck route/network? | [optional] 
**speeds** | [**Speeds**](Speeds.md) |  | [optional] 
**bikeNetwork** | **Bool** | Is the edge part of a bicycle network? | [optional] 
**roundAbout** | **Bool** | Is the edge part of a roundabout? | [optional] 
**trafficSignal** | **Bool** | Is there a traffic signal at the end of the directed edge? | [optional] 
**accessRestriction** | **Bool** | Is there a general restriction or access condition? | [optional] 
**destinationOnly** | **Bool** | Is the edge destination only? If so, it will not be routed through. | [optional] 
**geoAttributes** | [**GeoAttributes**](GeoAttributes.md) |  | [optional] 
**startRestriction** | [**Restrictions**](Restrictions.md) |  | [optional] 
**cycleLane** | **String** | Indication of the type of cycle lane (if any) present along an edge. | [optional] 
**endRestriction** | [**Restrictions**](Restrictions.md) |  | [optional] 
**seasonal** | **Bool** | Is access seasonal (ex. no access in winter)? | [optional] 
**countryCrossing** | **Bool** | Does the edge cross into a new country? | [optional] 
**partOfComplexRestriction** | **Bool** | Is the edge part of a complex restriction? | [optional] 
**hasSign** | **Bool** | Do exit signs exist for the edge? | [optional] 
**access** | [**Restrictions**](Restrictions.md) |  | [optional] 
**bridge** | **Bool** | Is the edge part of a bridge? | [optional] 
**classification** | [**HighwayClassification**](HighwayClassification.md) |  | [optional] 
**toll** | **Bool** | Is the edge part of a toll road? | [optional] 
**tunnel** | **Bool** | Is the edge part of a tunnel? | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


