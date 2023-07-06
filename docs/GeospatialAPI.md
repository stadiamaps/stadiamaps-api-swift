# GeospatialAPI

All URIs are relative to *https://api.stadiamaps.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**elevation**](GeospatialAPI.md#elevation) | **POST** /elevation/v1 | Get the elevation profile along a polyline or at a point.
[**tzLookup**](GeospatialAPI.md#tzlookup) | **GET** /tz/lookup/v1 | Get the current time zone information for any point on earth.


# **elevation**
```swift
    open class func elevation(heightRequest: HeightRequest? = nil, completion: @escaping (_ data: HeightResponse?, _ error: Error?) -> Void)
```

Get the elevation profile along a polyline or at a point.

The Stadia elevation API allows you to get the elevation of any point on earth. You can pass either a simple set of points or a Google encoded polyline string. This pairs well with our routing APIs, so you can generate an elevation profile for your next bike or run.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import StadiaMaps

let heightRequest = heightRequest(id: "id_example", shape: [coordinate(lat: 123, lon: 123)], encodedPolyline: "encodedPolyline_example", shapeFormat: "shapeFormat_example", range: false, heightPrecision: 123) // HeightRequest |  (optional)

// Get the elevation profile along a polyline or at a point.
GeospatialAPI.elevation(heightRequest: heightRequest) { (response, error) in
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
 **heightRequest** | [**HeightRequest**](HeightRequest.md) |  | [optional] 

### Return type

[**HeightResponse**](HeightResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tzLookup**
```swift
    open class func tzLookup(lat: Double, lng: Double, timestamp: Int64? = nil, completion: @escaping (_ data: TzResponse?, _ error: Error?) -> Void)
```

Get the current time zone information for any point on earth.

The Stadia TZ API provides time zone information, as well as information about any special offset (such as DST) in effect based on the latest IANA TZDB. Note that this API may not be accurate for timestamps in the past and does not claim to report precise nautical times in the open ocean beyond territorial waters.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import StadiaMaps

let lat = 987 // Double | The latitude of the point you are interested in.
let lng = 987 // Double | The longitude of the point you are interested in.
let timestamp = 987 // Int64 | The UNIX timestamp at which the UTC and DST offsets will be calculated. This defaults to the present time. This endpoint is not necessarily guaranteed to be accurate for timestamps that occurred in the past. Time zone geographic boundaries change over time, so if the point you are querying for was previously in a different time zone, historical results will not be accurate. If, however, the point has been in the same geographic time zone for a very long time (ex: `America/New_York`), the historical data may be accurate for 100+ years in the past (depending on how far back the IANA TZDB rules have been specified). (optional)

// Get the current time zone information for any point on earth.
GeospatialAPI.tzLookup(lat: lat, lng: lng, timestamp: timestamp) { (response, error) in
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
 **lat** | **Double** | The latitude of the point you are interested in. | 
 **lng** | **Double** | The longitude of the point you are interested in. | 
 **timestamp** | **Int64** | The UNIX timestamp at which the UTC and DST offsets will be calculated. This defaults to the present time. This endpoint is not necessarily guaranteed to be accurate for timestamps that occurred in the past. Time zone geographic boundaries change over time, so if the point you are querying for was previously in a different time zone, historical results will not be accurate. If, however, the point has been in the same geographic time zone for a very long time (ex: &#x60;America/New_York&#x60;), the historical data may be accurate for 100+ years in the past (depending on how far back the IANA TZDB rules have been specified). | [optional] 

### Return type

[**TzResponse**](TzResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

