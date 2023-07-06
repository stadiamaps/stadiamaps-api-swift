# GeocodingAPI

All URIs are relative to *https://api.stadiamaps.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**autocomplete**](GeocodingAPI.md#autocomplete) | **GET** /geocoding/v1/autocomplete | Search and geocode quickly based on partial input.
[**place**](GeocodingAPI.md#place) | **GET** /geocoding/v1/place | Retrieve details of a place using its GID.
[**reverse**](GeocodingAPI.md#reverse) | **GET** /geocoding/v1/reverse | Find places and addresses near geographic coordinates (reverse geocoding).
[**search**](GeocodingAPI.md#search) | **GET** /geocoding/v1/search | Search for location and other info using a place name or address (forward geocoding).
[**searchStructured**](GeocodingAPI.md#searchstructured) | **GET** /geocoding/v1/search/structured | Find locations matching components (structured forward geocoding).


# **autocomplete**
```swift
    open class func autocomplete(text: String, focusPointLat: Double? = nil, focusPointLon: Double? = nil, boundaryRectMinLat: Double? = nil, boundaryRectMaxLat: Double? = nil, boundaryRectMinLon: Double? = nil, boundaryRectMaxLon: Double? = nil, boundaryCircleLat: Double? = nil, boundaryCircleLon: Double? = nil, boundaryCircleRadius: Double? = nil, boundaryCountry: [String]? = nil, boundaryGid: String? = nil, layers: [PeliasLayer]? = nil, sources: [PeliasSource]? = nil, size: Int? = nil, lang: String? = nil, completion: @escaping (_ data: PeliasResponse?, _ error: Error?) -> Void)
```

Search and geocode quickly based on partial input.

Autocomplete enables interactive search-as-you-type user experiences, suggesting places as you type, along with information that will help your users find the correct place quickly.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import StadiaMaps

let text = "text_example" // String | The place name (address, venue name, etc.) to search for.
let focusPointLat = 987 // Double | The latitude of the point to focus the search on. This will bias results toward the focus point. Requires `focus.point.lon`. (optional)
let focusPointLon = 987 // Double | The longitude of the point to focus the search on. This will bias results toward the focus point. Requires `focus.point.lat`. (optional)
let boundaryRectMinLat = 987 // Double | Defines the min latitude component of a bounding box to limit the search to. Requires all other `boundary.rect` parameters to be specified. (optional)
let boundaryRectMaxLat = 987 // Double | Defines the max latitude component of a bounding box to limit the search to. Requires all other `boundary.rect` parameters to be specified. (optional)
let boundaryRectMinLon = 987 // Double | Defines the min longitude component of a bounding box to limit the search to. Requires all other `boundary.rect` parameters to be specified. (optional)
let boundaryRectMaxLon = 987 // Double | Defines the max longitude component of a bounding box to limit the search to. Requires all other `boundary.rect` parameters to be specified. (optional)
let boundaryCircleLat = 987 // Double | The latitude of the center of a circle to limit the search to. Requires `boundary.circle.lon`. (optional)
let boundaryCircleLon = 987 // Double | The longitude of the center of a circle to limit the search to. Requires `boundary.circle.lat`. (optional)
let boundaryCircleRadius = 987 // Double | The radius of the circle (in kilometers) to limit the search to. Defaults to 50km if unspecified. (optional)
let boundaryCountry = ["inner_example"] // [String] | A list of countries to limit the search to. These may be either full names (ex: Canada), or an ISO 3116-1 alpha-2 or alpha-3 code. Prefer ISO codes when possible. (optional)
let boundaryGid = "boundaryGid_example" // String | The Pelias GID of an area to limit the search to. (optional)
let layers = [peliasLayer()] // [PeliasLayer] | A list of layers to limit the search to. (optional)
let sources = [peliasSource()] // [PeliasSource] | A list of sources to limit the search to. (optional)
let size = 987 // Int | The maximum number of results to return. (optional)
let lang = "lang_example" // String | A BCP47 language tag which specifies a preference for localization of results. By default, results are in the default locale of the source data, but specifying a language will attempt to localize the results. Note that while a `langtag` (in RFC 5646 terms) can contain script, region, etc., only the `language` portion, an ISO 639 code, will be considered. So `en-US` and `en-GB` will both be treated as English. (optional)

// Search and geocode quickly based on partial input.
GeocodingAPI.autocomplete(text: text, focusPointLat: focusPointLat, focusPointLon: focusPointLon, boundaryRectMinLat: boundaryRectMinLat, boundaryRectMaxLat: boundaryRectMaxLat, boundaryRectMinLon: boundaryRectMinLon, boundaryRectMaxLon: boundaryRectMaxLon, boundaryCircleLat: boundaryCircleLat, boundaryCircleLon: boundaryCircleLon, boundaryCircleRadius: boundaryCircleRadius, boundaryCountry: boundaryCountry, boundaryGid: boundaryGid, layers: layers, sources: sources, size: size, lang: lang) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **String** | The place name (address, venue name, etc.) to search for. | 
 **focusPointLat** | **Double** | The latitude of the point to focus the search on. This will bias results toward the focus point. Requires &#x60;focus.point.lon&#x60;. | [optional] 
 **focusPointLon** | **Double** | The longitude of the point to focus the search on. This will bias results toward the focus point. Requires &#x60;focus.point.lat&#x60;. | [optional] 
 **boundaryRectMinLat** | **Double** | Defines the min latitude component of a bounding box to limit the search to. Requires all other &#x60;boundary.rect&#x60; parameters to be specified. | [optional] 
 **boundaryRectMaxLat** | **Double** | Defines the max latitude component of a bounding box to limit the search to. Requires all other &#x60;boundary.rect&#x60; parameters to be specified. | [optional] 
 **boundaryRectMinLon** | **Double** | Defines the min longitude component of a bounding box to limit the search to. Requires all other &#x60;boundary.rect&#x60; parameters to be specified. | [optional] 
 **boundaryRectMaxLon** | **Double** | Defines the max longitude component of a bounding box to limit the search to. Requires all other &#x60;boundary.rect&#x60; parameters to be specified. | [optional] 
 **boundaryCircleLat** | **Double** | The latitude of the center of a circle to limit the search to. Requires &#x60;boundary.circle.lon&#x60;. | [optional] 
 **boundaryCircleLon** | **Double** | The longitude of the center of a circle to limit the search to. Requires &#x60;boundary.circle.lat&#x60;. | [optional] 
 **boundaryCircleRadius** | **Double** | The radius of the circle (in kilometers) to limit the search to. Defaults to 50km if unspecified. | [optional] 
 **boundaryCountry** | [**[String]**](String.md) | A list of countries to limit the search to. These may be either full names (ex: Canada), or an ISO 3116-1 alpha-2 or alpha-3 code. Prefer ISO codes when possible. | [optional] 
 **boundaryGid** | **String** | The Pelias GID of an area to limit the search to. | [optional] 
 **layers** | [**[PeliasLayer]**](PeliasLayer.md) | A list of layers to limit the search to. | [optional] 
 **sources** | [**[PeliasSource]**](PeliasSource.md) | A list of sources to limit the search to. | [optional] 
 **size** | **Int** | The maximum number of results to return. | [optional] 
 **lang** | **String** | A BCP47 language tag which specifies a preference for localization of results. By default, results are in the default locale of the source data, but specifying a language will attempt to localize the results. Note that while a &#x60;langtag&#x60; (in RFC 5646 terms) can contain script, region, etc., only the &#x60;language&#x60; portion, an ISO 639 code, will be considered. So &#x60;en-US&#x60; and &#x60;en-GB&#x60; will both be treated as English. | [optional] 

### Return type

[**PeliasResponse**](PeliasResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **place**
```swift
    open class func place(ids: [String], lang: String? = nil, completion: @escaping (_ data: PeliasResponse?, _ error: Error?) -> Void)
```

Retrieve details of a place using its GID.

Many search result components include an associated GID field (for example, an address may have a `localadmin_gid`). The place endpoint lets you look up these places directly by ID. Note that these IDs are not stable for all sources. See the [online documentation](https://docs.stadiamaps.com/geocoding-search-autocomplete/place-lookup/) for details.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import StadiaMaps

let ids = ["inner_example"] // [String] | A list of Pelias GIDs to search for.
let lang = "lang_example" // String | A BCP47 language tag which specifies a preference for localization of results. By default, results are in the default locale of the source data, but specifying a language will attempt to localize the results. Note that while a `langtag` (in RFC 5646 terms) can contain script, region, etc., only the `language` portion, an ISO 639 code, will be considered. So `en-US` and `en-GB` will both be treated as English. (optional)

// Retrieve details of a place using its GID.
GeocodingAPI.place(ids: ids, lang: lang) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ids** | [**[String]**](String.md) | A list of Pelias GIDs to search for. | 
 **lang** | **String** | A BCP47 language tag which specifies a preference for localization of results. By default, results are in the default locale of the source data, but specifying a language will attempt to localize the results. Note that while a &#x60;langtag&#x60; (in RFC 5646 terms) can contain script, region, etc., only the &#x60;language&#x60; portion, an ISO 639 code, will be considered. So &#x60;en-US&#x60; and &#x60;en-GB&#x60; will both be treated as English. | [optional] 

### Return type

[**PeliasResponse**](PeliasResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reverse**
```swift
    open class func reverse(pointLat: Double, pointLon: Double, boundaryCircleRadius: Double? = nil, layers: [PeliasLayer]? = nil, sources: [PeliasSource]? = nil, boundaryCountry: [String]? = nil, boundaryGid: String? = nil, size: Int? = nil, lang: String? = nil, completion: @escaping (_ data: PeliasResponse?, _ error: Error?) -> Void)
```

Find places and addresses near geographic coordinates (reverse geocoding).

Reverse geocoding and search finds places and addresses near any geographic coordinates.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import StadiaMaps

let pointLat = 987 // Double | The latitude of the point at which to perform the search.
let pointLon = 987 // Double | The longitude of the point at which to perform the search.
let boundaryCircleRadius = 987 // Double | The radius of the circle (in kilometers) to limit the search to. Defaults to 50km if unspecified. (optional)
let layers = [peliasLayer()] // [PeliasLayer] | A list of layers to limit the search to. (optional)
let sources = [peliasSource()] // [PeliasSource] | A list of sources to limit the search to. (optional)
let boundaryCountry = ["inner_example"] // [String] | A list of countries to limit the search to. These may be either full names (ex: Canada), or an ISO 3116-1 alpha-2 or alpha-3 code. Prefer ISO codes when possible. (optional)
let boundaryGid = "boundaryGid_example" // String | The Pelias GID of an area to limit the search to. (optional)
let size = 987 // Int | The maximum number of results to return. (optional)
let lang = "lang_example" // String | A BCP47 language tag which specifies a preference for localization of results. By default, results are in the default locale of the source data, but specifying a language will attempt to localize the results. Note that while a `langtag` (in RFC 5646 terms) can contain script, region, etc., only the `language` portion, an ISO 639 code, will be considered. So `en-US` and `en-GB` will both be treated as English. (optional)

// Find places and addresses near geographic coordinates (reverse geocoding).
GeocodingAPI.reverse(pointLat: pointLat, pointLon: pointLon, boundaryCircleRadius: boundaryCircleRadius, layers: layers, sources: sources, boundaryCountry: boundaryCountry, boundaryGid: boundaryGid, size: size, lang: lang) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pointLat** | **Double** | The latitude of the point at which to perform the search. | 
 **pointLon** | **Double** | The longitude of the point at which to perform the search. | 
 **boundaryCircleRadius** | **Double** | The radius of the circle (in kilometers) to limit the search to. Defaults to 50km if unspecified. | [optional] 
 **layers** | [**[PeliasLayer]**](PeliasLayer.md) | A list of layers to limit the search to. | [optional] 
 **sources** | [**[PeliasSource]**](PeliasSource.md) | A list of sources to limit the search to. | [optional] 
 **boundaryCountry** | [**[String]**](String.md) | A list of countries to limit the search to. These may be either full names (ex: Canada), or an ISO 3116-1 alpha-2 or alpha-3 code. Prefer ISO codes when possible. | [optional] 
 **boundaryGid** | **String** | The Pelias GID of an area to limit the search to. | [optional] 
 **size** | **Int** | The maximum number of results to return. | [optional] 
 **lang** | **String** | A BCP47 language tag which specifies a preference for localization of results. By default, results are in the default locale of the source data, but specifying a language will attempt to localize the results. Note that while a &#x60;langtag&#x60; (in RFC 5646 terms) can contain script, region, etc., only the &#x60;language&#x60; portion, an ISO 639 code, will be considered. So &#x60;en-US&#x60; and &#x60;en-GB&#x60; will both be treated as English. | [optional] 

### Return type

[**PeliasResponse**](PeliasResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search**
```swift
    open class func search(text: String, focusPointLat: Double? = nil, focusPointLon: Double? = nil, boundaryRectMinLat: Double? = nil, boundaryRectMaxLat: Double? = nil, boundaryRectMinLon: Double? = nil, boundaryRectMaxLon: Double? = nil, boundaryCircleLat: Double? = nil, boundaryCircleLon: Double? = nil, boundaryCircleRadius: Double? = nil, boundaryCountry: [String]? = nil, boundaryGid: String? = nil, layers: [PeliasLayer]? = nil, sources: [PeliasSource]? = nil, size: Int? = nil, lang: String? = nil, completion: @escaping (_ data: PeliasResponse?, _ error: Error?) -> Void)
```

Search for location and other info using a place name or address (forward geocoding).

The search endpoint lets you search for addresses, points of interest, and administrative areas. This is most commonly used for forward geocoding applications where you need to find the geographic coordinates of an address.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import StadiaMaps

let text = "text_example" // String | The place name (address, venue name, etc.) to search for.
let focusPointLat = 987 // Double | The latitude of the point to focus the search on. This will bias results toward the focus point. Requires `focus.point.lon`. (optional)
let focusPointLon = 987 // Double | The longitude of the point to focus the search on. This will bias results toward the focus point. Requires `focus.point.lat`. (optional)
let boundaryRectMinLat = 987 // Double | Defines the min latitude component of a bounding box to limit the search to. Requires all other `boundary.rect` parameters to be specified. (optional)
let boundaryRectMaxLat = 987 // Double | Defines the max latitude component of a bounding box to limit the search to. Requires all other `boundary.rect` parameters to be specified. (optional)
let boundaryRectMinLon = 987 // Double | Defines the min longitude component of a bounding box to limit the search to. Requires all other `boundary.rect` parameters to be specified. (optional)
let boundaryRectMaxLon = 987 // Double | Defines the max longitude component of a bounding box to limit the search to. Requires all other `boundary.rect` parameters to be specified. (optional)
let boundaryCircleLat = 987 // Double | The latitude of the center of a circle to limit the search to. Requires `boundary.circle.lon`. (optional)
let boundaryCircleLon = 987 // Double | The longitude of the center of a circle to limit the search to. Requires `boundary.circle.lat`. (optional)
let boundaryCircleRadius = 987 // Double | The radius of the circle (in kilometers) to limit the search to. Defaults to 50km if unspecified. (optional)
let boundaryCountry = ["inner_example"] // [String] | A list of countries to limit the search to. These may be either full names (ex: Canada), or an ISO 3116-1 alpha-2 or alpha-3 code. Prefer ISO codes when possible. (optional)
let boundaryGid = "boundaryGid_example" // String | The Pelias GID of an area to limit the search to. (optional)
let layers = [peliasLayer()] // [PeliasLayer] | A list of layers to limit the search to. (optional)
let sources = [peliasSource()] // [PeliasSource] | A list of sources to limit the search to. (optional)
let size = 987 // Int | The maximum number of results to return. (optional)
let lang = "lang_example" // String | A BCP47 language tag which specifies a preference for localization of results. By default, results are in the default locale of the source data, but specifying a language will attempt to localize the results. Note that while a `langtag` (in RFC 5646 terms) can contain script, region, etc., only the `language` portion, an ISO 639 code, will be considered. So `en-US` and `en-GB` will both be treated as English. (optional)

// Search for location and other info using a place name or address (forward geocoding).
GeocodingAPI.search(text: text, focusPointLat: focusPointLat, focusPointLon: focusPointLon, boundaryRectMinLat: boundaryRectMinLat, boundaryRectMaxLat: boundaryRectMaxLat, boundaryRectMinLon: boundaryRectMinLon, boundaryRectMaxLon: boundaryRectMaxLon, boundaryCircleLat: boundaryCircleLat, boundaryCircleLon: boundaryCircleLon, boundaryCircleRadius: boundaryCircleRadius, boundaryCountry: boundaryCountry, boundaryGid: boundaryGid, layers: layers, sources: sources, size: size, lang: lang) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **String** | The place name (address, venue name, etc.) to search for. | 
 **focusPointLat** | **Double** | The latitude of the point to focus the search on. This will bias results toward the focus point. Requires &#x60;focus.point.lon&#x60;. | [optional] 
 **focusPointLon** | **Double** | The longitude of the point to focus the search on. This will bias results toward the focus point. Requires &#x60;focus.point.lat&#x60;. | [optional] 
 **boundaryRectMinLat** | **Double** | Defines the min latitude component of a bounding box to limit the search to. Requires all other &#x60;boundary.rect&#x60; parameters to be specified. | [optional] 
 **boundaryRectMaxLat** | **Double** | Defines the max latitude component of a bounding box to limit the search to. Requires all other &#x60;boundary.rect&#x60; parameters to be specified. | [optional] 
 **boundaryRectMinLon** | **Double** | Defines the min longitude component of a bounding box to limit the search to. Requires all other &#x60;boundary.rect&#x60; parameters to be specified. | [optional] 
 **boundaryRectMaxLon** | **Double** | Defines the max longitude component of a bounding box to limit the search to. Requires all other &#x60;boundary.rect&#x60; parameters to be specified. | [optional] 
 **boundaryCircleLat** | **Double** | The latitude of the center of a circle to limit the search to. Requires &#x60;boundary.circle.lon&#x60;. | [optional] 
 **boundaryCircleLon** | **Double** | The longitude of the center of a circle to limit the search to. Requires &#x60;boundary.circle.lat&#x60;. | [optional] 
 **boundaryCircleRadius** | **Double** | The radius of the circle (in kilometers) to limit the search to. Defaults to 50km if unspecified. | [optional] 
 **boundaryCountry** | [**[String]**](String.md) | A list of countries to limit the search to. These may be either full names (ex: Canada), or an ISO 3116-1 alpha-2 or alpha-3 code. Prefer ISO codes when possible. | [optional] 
 **boundaryGid** | **String** | The Pelias GID of an area to limit the search to. | [optional] 
 **layers** | [**[PeliasLayer]**](PeliasLayer.md) | A list of layers to limit the search to. | [optional] 
 **sources** | [**[PeliasSource]**](PeliasSource.md) | A list of sources to limit the search to. | [optional] 
 **size** | **Int** | The maximum number of results to return. | [optional] 
 **lang** | **String** | A BCP47 language tag which specifies a preference for localization of results. By default, results are in the default locale of the source data, but specifying a language will attempt to localize the results. Note that while a &#x60;langtag&#x60; (in RFC 5646 terms) can contain script, region, etc., only the &#x60;language&#x60; portion, an ISO 639 code, will be considered. So &#x60;en-US&#x60; and &#x60;en-GB&#x60; will both be treated as English. | [optional] 

### Return type

[**PeliasResponse**](PeliasResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchStructured**
```swift
    open class func searchStructured(address: String? = nil, neighbourhood: String? = nil, borough: String? = nil, locality: String? = nil, county: String? = nil, region: String? = nil, postalcode: String? = nil, country: String? = nil, focusPointLat: Double? = nil, focusPointLon: Double? = nil, boundaryRectMinLat: Double? = nil, boundaryRectMaxLat: Double? = nil, boundaryRectMinLon: Double? = nil, boundaryRectMaxLon: Double? = nil, boundaryCircleLat: Double? = nil, boundaryCircleLon: Double? = nil, boundaryCircleRadius: Double? = nil, boundaryCountry: [String]? = nil, boundaryGid: String? = nil, layers: [PeliasLayer]? = nil, sources: [PeliasSource]? = nil, size: Int? = nil, lang: String? = nil, completion: @escaping (_ data: PeliasResponse?, _ error: Error?) -> Void)
```

Find locations matching components (structured forward geocoding).

The structured search endpoint lets you search for addresses, points of interest, and administrative areas. Rather than a single string which the API must infer meaning from, the structured search endpoint allows you to specify the known components upfront, which is useful in many forward geocoding workflows.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import StadiaMaps

let address = "address_example" // String | A street name, optionally with a house number. (optional)
let neighbourhood = "neighbourhood_example" // String | Varies by area, but has a locally specific meaning (NOT always an official administrative unit). (optional)
let borough = "borough_example" // String | A unit within a city (not widely used, but present in places like NYC and Mexico City). (optional)
let locality = "locality_example" // String | The city, village, town, etc. that the place/address is part of. (optional)
let county = "county_example" // String | Administrative divisions between localities and regions. Not commonly used as input to structured geocoding. (optional)
let region = "region_example" // String | Typically the first administrative division within a country. For example, a US state or a Canadian province. (optional)
let postalcode = "postalcode_example" // String | A mail sorting code. (optional)
let country = "country_example" // String | A full name (ex: Canada), or a 2 or 3 character ISO code. Prefer ISO codes when possible. (optional)
let focusPointLat = 987 // Double | The latitude of the point to focus the search on. This will bias results toward the focus point. Requires `focus.point.lon`. (optional)
let focusPointLon = 987 // Double | The longitude of the point to focus the search on. This will bias results toward the focus point. Requires `focus.point.lat`. (optional)
let boundaryRectMinLat = 987 // Double | Defines the min latitude component of a bounding box to limit the search to. Requires all other `boundary.rect` parameters to be specified. (optional)
let boundaryRectMaxLat = 987 // Double | Defines the max latitude component of a bounding box to limit the search to. Requires all other `boundary.rect` parameters to be specified. (optional)
let boundaryRectMinLon = 987 // Double | Defines the min longitude component of a bounding box to limit the search to. Requires all other `boundary.rect` parameters to be specified. (optional)
let boundaryRectMaxLon = 987 // Double | Defines the max longitude component of a bounding box to limit the search to. Requires all other `boundary.rect` parameters to be specified. (optional)
let boundaryCircleLat = 987 // Double | The latitude of the center of a circle to limit the search to. Requires `boundary.circle.lon`. (optional)
let boundaryCircleLon = 987 // Double | The longitude of the center of a circle to limit the search to. Requires `boundary.circle.lat`. (optional)
let boundaryCircleRadius = 987 // Double | The radius of the circle (in kilometers) to limit the search to. Defaults to 50km if unspecified. (optional)
let boundaryCountry = ["inner_example"] // [String] | A list of countries to limit the search to. These may be either full names (ex: Canada), or an ISO 3116-1 alpha-2 or alpha-3 code. Prefer ISO codes when possible. (optional)
let boundaryGid = "boundaryGid_example" // String | The Pelias GID of an area to limit the search to. (optional)
let layers = [peliasLayer()] // [PeliasLayer] | A list of layers to limit the search to. (optional)
let sources = [peliasSource()] // [PeliasSource] | A list of sources to limit the search to. (optional)
let size = 987 // Int | The maximum number of results to return. (optional)
let lang = "lang_example" // String | A BCP47 language tag which specifies a preference for localization of results. By default, results are in the default locale of the source data, but specifying a language will attempt to localize the results. Note that while a `langtag` (in RFC 5646 terms) can contain script, region, etc., only the `language` portion, an ISO 639 code, will be considered. So `en-US` and `en-GB` will both be treated as English. (optional)

// Find locations matching components (structured forward geocoding).
GeocodingAPI.searchStructured(address: address, neighbourhood: neighbourhood, borough: borough, locality: locality, county: county, region: region, postalcode: postalcode, country: country, focusPointLat: focusPointLat, focusPointLon: focusPointLon, boundaryRectMinLat: boundaryRectMinLat, boundaryRectMaxLat: boundaryRectMaxLat, boundaryRectMinLon: boundaryRectMinLon, boundaryRectMaxLon: boundaryRectMaxLon, boundaryCircleLat: boundaryCircleLat, boundaryCircleLon: boundaryCircleLon, boundaryCircleRadius: boundaryCircleRadius, boundaryCountry: boundaryCountry, boundaryGid: boundaryGid, layers: layers, sources: sources, size: size, lang: lang) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String** | A street name, optionally with a house number. | [optional] 
 **neighbourhood** | **String** | Varies by area, but has a locally specific meaning (NOT always an official administrative unit). | [optional] 
 **borough** | **String** | A unit within a city (not widely used, but present in places like NYC and Mexico City). | [optional] 
 **locality** | **String** | The city, village, town, etc. that the place/address is part of. | [optional] 
 **county** | **String** | Administrative divisions between localities and regions. Not commonly used as input to structured geocoding. | [optional] 
 **region** | **String** | Typically the first administrative division within a country. For example, a US state or a Canadian province. | [optional] 
 **postalcode** | **String** | A mail sorting code. | [optional] 
 **country** | **String** | A full name (ex: Canada), or a 2 or 3 character ISO code. Prefer ISO codes when possible. | [optional] 
 **focusPointLat** | **Double** | The latitude of the point to focus the search on. This will bias results toward the focus point. Requires &#x60;focus.point.lon&#x60;. | [optional] 
 **focusPointLon** | **Double** | The longitude of the point to focus the search on. This will bias results toward the focus point. Requires &#x60;focus.point.lat&#x60;. | [optional] 
 **boundaryRectMinLat** | **Double** | Defines the min latitude component of a bounding box to limit the search to. Requires all other &#x60;boundary.rect&#x60; parameters to be specified. | [optional] 
 **boundaryRectMaxLat** | **Double** | Defines the max latitude component of a bounding box to limit the search to. Requires all other &#x60;boundary.rect&#x60; parameters to be specified. | [optional] 
 **boundaryRectMinLon** | **Double** | Defines the min longitude component of a bounding box to limit the search to. Requires all other &#x60;boundary.rect&#x60; parameters to be specified. | [optional] 
 **boundaryRectMaxLon** | **Double** | Defines the max longitude component of a bounding box to limit the search to. Requires all other &#x60;boundary.rect&#x60; parameters to be specified. | [optional] 
 **boundaryCircleLat** | **Double** | The latitude of the center of a circle to limit the search to. Requires &#x60;boundary.circle.lon&#x60;. | [optional] 
 **boundaryCircleLon** | **Double** | The longitude of the center of a circle to limit the search to. Requires &#x60;boundary.circle.lat&#x60;. | [optional] 
 **boundaryCircleRadius** | **Double** | The radius of the circle (in kilometers) to limit the search to. Defaults to 50km if unspecified. | [optional] 
 **boundaryCountry** | [**[String]**](String.md) | A list of countries to limit the search to. These may be either full names (ex: Canada), or an ISO 3116-1 alpha-2 or alpha-3 code. Prefer ISO codes when possible. | [optional] 
 **boundaryGid** | **String** | The Pelias GID of an area to limit the search to. | [optional] 
 **layers** | [**[PeliasLayer]**](PeliasLayer.md) | A list of layers to limit the search to. | [optional] 
 **sources** | [**[PeliasSource]**](PeliasSource.md) | A list of sources to limit the search to. | [optional] 
 **size** | **Int** | The maximum number of results to return. | [optional] 
 **lang** | **String** | A BCP47 language tag which specifies a preference for localization of results. By default, results are in the default locale of the source data, but specifying a language will attempt to localize the results. Note that while a &#x60;langtag&#x60; (in RFC 5646 terms) can contain script, region, etc., only the &#x60;language&#x60; portion, an ISO 639 code, will be considered. So &#x60;en-US&#x60; and &#x60;en-GB&#x60; will both be treated as English. | [optional] 

### Return type

[**PeliasResponse**](PeliasResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

