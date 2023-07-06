# PeliasGeoJSONProperties

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**gid** | **String** | A scoped GID for this result. This can be passed to the place endpoint. Note that these are not always stable. For OSM, Geonames, and Who&#39;s on First, these are usually stable, but for other sources like OSM, no stability is guaranteed. | [optional] 
**sourceId** | **String** | An ID referencing the original data source (specified via source) for the result. These IDs are specific to the source that they originated from. For example, in the case of OSM, these typically look like way/123 or point/123. | [optional] 
**label** | **String** | A full, human-readable label. However, you may not necessarily want to use this; be sure to read the docs for name, locality, and region before making a decision. This field is mostly localized. The order of components is generally locally correct (ex: for an address in South Korea, the house number appears after the street name). However, components will use a request language equivalent if one exists (ex: Seoul instead of 서울 if lang&#x3D;en). | [optional] 
**layer** | [**PeliasLayer**](PeliasLayer.md) |  | [optional] 
**name** | **String** | The name of the place, the street address including house number, or label of similar relevance. If your app is localized to a specific region, you may get better display results by combining name, locality OR region (or neither?), and postal code together in the local format. Experiment with what works best for your use case. | [optional] 
**accuracy** | **String** | The accuracy of the geographic coordinates in the result. This value is a property of the result itself and won&#39;t change based on the query. A point result means that the record can reasonably be represented by a single geographic point. Addresses, venues, or interpolated addresses usually have point accuracy. Larger areas, such as a city or country, cannot be represented by a single point, so a centroid is given instead. | [optional] 
**addendum** | [**PeliasGeoJSONPropertiesAddendum**](PeliasGeoJSONPropertiesAddendum.md) |  | [optional] 
**continent** | **String** |  | [optional] 
**continentGid** | **String** |  | [optional] 
**country** | **String** |  | [optional] 
**countryGid** | **String** |  | [optional] 
**neighbourhood** | **String** |  | [optional] 
**neighbourhoodGid** | **String** |  | [optional] 
**borough** | **String** |  | [optional] 
**boroughGid** | **String** |  | [optional] 
**postalcode** | **String** |  | [optional] 
**street** | **String** |  | [optional] 
**housenumber** | **String** |  | [optional] 
**locality** | **String** | The city, village, town, etc. that the place / address is part of. Note that values may not always match postal or local conventions perfectly. | [optional] 
**localityGid** | **String** |  | [optional] 
**county** | **String** | Administrative divisions between localities and regions. Useful for disambiguating nearby results with similar names. | [optional] 
**region** | **String** | Typically the first administrative division within a country. For example, a US state or a Canadian province. | [optional] 
**regionA** | **String** | The abbreviation for the region. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


