//
// GeospatialAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

open class GeospatialAPI {
    /**
     Get the elevation profile along a polyline or at a point.

     - parameter heightRequest: (body)  (optional)
     - returns: HeightResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func elevation(heightRequest: HeightRequest? = nil) async throws -> HeightResponse {
        try await elevationWithRequestBuilder(heightRequest: heightRequest).execute().body
    }

    /**
     Get the elevation profile along a polyline or at a point.
     - POST /elevation/v1
     - The Stadia elevation API allows you to get the elevation of any point on earth. You can pass either a simple set of points or a Google encoded polyline string. This pairs well with our routing APIs, so you can generate an elevation profile for your next bike or run.
     - API Key:
       - type: apiKey api_key (QUERY)
       - name: ApiKeyAuth
     - parameter heightRequest: (body)  (optional)
     - returns: RequestBuilder<HeightResponse>
     */
    open class func elevationWithRequestBuilder(heightRequest: HeightRequest? = nil) -> RequestBuilder<HeightResponse> {
        let localVariablePath = "/elevation/v1"
        let localVariableURLString = StadiaMapsAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: heightRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<HeightResponse>.Type = StadiaMapsAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Get time zone information for any point on earth.

     - parameter lat: (query) The latitude of the point you are interested in.
     - parameter lng: (query) The longitude of the point you are interested in.
     - parameter timestamp: (query) The UNIX timestamp at which the UTC and DST offsets will be calculated. This defaults to the present time. This endpoint is not necessarily guaranteed to be accurate for timestamps that occurred in the past. Time zone geographic boundaries change over time, so if the point you are querying for was previously in a different time zone, historical results will not be accurate. If, however, the point has been in the same geographic time zone for a very long time (ex: &#x60;America/New_York&#x60;), the historical data may be accurate for 100+ years in the past (depending on how far back the IANA TZDB rules have been specified). (optional)
     - returns: TzResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func tzLookup(lat: Double, lng: Double, timestamp: Int64? = nil) async throws -> TzResponse {
        try await tzLookupWithRequestBuilder(lat: lat, lng: lng, timestamp: timestamp).execute().body
    }

    /**
     Get time zone information for any point on earth.
     - GET /tz/lookup/v1
     - Retrieve the time zone identifier, standard UTC offset, special offset (such as DST), and the localized time in several common formats.
     - API Key:
       - type: apiKey api_key (QUERY)
       - name: ApiKeyAuth
     - parameter lat: (query) The latitude of the point you are interested in.
     - parameter lng: (query) The longitude of the point you are interested in.
     - parameter timestamp: (query) The UNIX timestamp at which the UTC and DST offsets will be calculated. This defaults to the present time. This endpoint is not necessarily guaranteed to be accurate for timestamps that occurred in the past. Time zone geographic boundaries change over time, so if the point you are querying for was previously in a different time zone, historical results will not be accurate. If, however, the point has been in the same geographic time zone for a very long time (ex: &#x60;America/New_York&#x60;), the historical data may be accurate for 100+ years in the past (depending on how far back the IANA TZDB rules have been specified). (optional)
     - returns: RequestBuilder<TzResponse>
     */
    open class func tzLookupWithRequestBuilder(lat: Double, lng: Double, timestamp: Int64? = nil) -> RequestBuilder<TzResponse> {
        let localVariablePath = "/tz/lookup/v1"
        let localVariableURLString = StadiaMapsAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "lat": (wrappedValue: lat.encodeToJSON(), isExplode: true),
            "lng": (wrappedValue: lng.encodeToJSON(), isExplode: true),
            "timestamp": (wrappedValue: timestamp?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [:]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<TzResponse>.Type = StadiaMapsAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
