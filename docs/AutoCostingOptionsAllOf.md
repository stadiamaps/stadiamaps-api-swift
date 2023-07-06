# AutoCostingOptionsAllOf

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**height** | **Double** | The height of the automobile (in meters). | [optional] [default to 1.9]
**width** | **Double** | The width of the automobile (in meters). | [optional] [default to 1.6]
**tollBoothCost** | **Int** | The estimated cost (in seconds) when a toll booth is encountered. | [optional] [default to 15]
**tollBoothPenalty** | **Int** | A penalty (in seconds) applied to the route cost when a toll booth is encountered. This penalty can be used to reduce the likelihood of suggesting a route with toll booths unless absolutely necessary. | [optional] [default to 0]
**ferryCost** | **Int** | The estimated cost (in seconds) when a ferry is encountered. | [optional] [default to 300]
**useHighways** | **Double** | A measure of willingness to take highways. Values near 0 attempt to avoid highways, and values near 1 will favour them. Note that as some routes may be impossible without highways, 0 does not guarantee avoidance of them. | [optional] [default to 0.5]
**useTolls** | **Double** | A measure of willingness to take toll roads. Values near 0 attempt to avoid tolls, and values near 1 will favour them. Note that as some routes may be impossible without tolls, 0 does not guarantee avoidance of them. | [optional] [default to 0.5]
**useTracks** | **Double** | A measure of willingness to take track roads. Values near 0 attempt to avoid them, and values near 1 will favour them. Note that as some routes may be impossible without track roads, 0 does not guarantee avoidance of them. The default value is 0 for automobiles, busses, and trucks; and 0.5 for all other costing modes. | [optional] 
**topSpeed** | **Int** | The top speed (in kph) that the vehicle is capable of travelling. | [optional] [default to 140]
**shortest** | **Bool** | If true changes the cost metric to be quasi-shortest (pure distance-based) costing. This will disable ALL other costing factors. | [optional] [default to false]
**ignoreClosures** | **Bool** | If true, ignores all known closures. This option cannot be set if &#x60;location.search_filter.exclude_closures&#x60; is also specified. | [optional] [default to false]
**includeHov2** | **Bool** | If true, indicates the desire to include HOV roads with a 2-occupant requirement in the route when advantageous. | [optional] [default to false]
**includeHov3** | **Bool** | If true, indicates the desire to include HOV roads with a 3-occupant requirement in the route when advantageous. | [optional] [default to false]
**includeHot** | **Bool** | If true, indicates the desire to include toll roads which require the driver to pay a toll if the occupant requirement isn&#39;t met | [optional] [default to false]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


