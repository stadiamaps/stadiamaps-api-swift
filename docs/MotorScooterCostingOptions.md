# MotorScooterCostingOptions

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**maneuverPenalty** | **Int** | A penalty (in seconds) applied when transitioning between roads (determined by name). | [optional] [default to 5]
**gateCost** | **Int** | The estimated cost (in seconds) when a gate is encountered. | [optional] [default to 15]
**gatePenalty** | **Int** | A penalty (in seconds) applied to the route cost when a gate is encountered. This penalty can be used to reduce the likelihood of suggesting a route with gates unless absolutely necessary. | [optional] [default to 300]
**countryCrossingCost** | **Int** | The estimated cost (in seconds) when encountering an international border. | [optional] [default to 600]
**countryCrossingPenalty** | **Int** | A penalty applied to transitions to international border crossings. This penalty can be used to reduce the likelihood of suggesting a route with border crossings unless absolutely necessary. | [optional] [default to 0]
**servicePenalty** | **Int** | A penalty applied to transitions to service roads. This penalty can be used to reduce the likelihood of suggesting a route with service roads unless absolutely necessary. The default penalty is 15 for cars, busses, motor scooters, and motorcycles; and zero for others. | [optional] 
**serviceFactor** | **Double** | A factor that multiplies the cost when service roads are encountered. The default is 1.2 for cars and busses, and 1 for trucks, motor scooters, and motorcycles. | [optional] [default to 1]
**useLivingStreets** | **Double** | A measure of willingness to take living streets. Values near 0 attempt to avoid them, and values near 1 will favour them. Note that as some routes may be impossible without living streets, 0 does not guarantee avoidance of them. The default value is 0 for trucks; 0.1 for other motor vehicles; 0.5 for bicycles; and 0.6 for pedestrians. | [optional] 
**useFerry** | **Double** | A measure of willingness to take ferries. Values near 0 attempt to avoid ferries, and values near 1 will favour them. Note that as some routes may be impossible without ferries, 0 does not guarantee avoidance of them. | [optional] [default to 0.5]
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
**usePrimary** | **Double** | A measure of willingness to use primary roads. Values near 0 attempt to avoid primary roads and stay on roads with lower speeds, and values near 1 indicate the rider is more comfortable on these roads. | [optional] [default to 0.5]
**useHills** | **Double** | A measure of willingness to take tackle hills. Values near 0 attempt to avoid hills and steeper grades even if it means a longer route, and values near 1 indicates that the rider does not fear them. Note that as some routes may be impossible without hills, 0 does not guarantee avoidance of them. | [optional] [default to 0.5]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


