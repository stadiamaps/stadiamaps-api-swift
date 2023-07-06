# LocateEdge

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**edgeId** | [**NodeId**](NodeId.md) |  | [optional] 
**correlatedLat** | **Double** |  | [optional] 
**correlatedLon** | **Double** |  | [optional] 
**percentAlong** | **Double** |  | [optional] 
**sideOfStreet** | **String** |  | [optional] 
**linearReference** | **String** | A base64-encoded [OpenLR location reference](https://www.openlr-association.com/fileadmin/user_upload/openlr-whitepaper_v1.5.pdf), for a graph edge of the road network matched by the query. | [optional] 
**outboundReach** | **Int** |  | [optional] 
**heading** | **Float** |  | [optional] 
**inboundReach** | **Int** |  | [optional] 
**distance** | **Float** |  | [optional] 
**predictedSpeeds** | **[Int]** | Predicted speed information based on historical data. If available, this will include 2016 entries. Each entry represents 5 minutes, where the first entry represents midnight on Monday, the second entry represents 00:05 on Monday, etc. | [optional] 
**edgeInfo** | [**LocateEdgeInfo**](LocateEdgeInfo.md) |  | [optional] 
**edge** | [**LocateDetailedEdge**](LocateDetailedEdge.md) |  | [optional] 
**warnings** | **[String]** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


