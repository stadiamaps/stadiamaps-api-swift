# PedestrianCostingOptions

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**walkingSpeed** | **Int** | Walking speed in kph. | [optional] 
**walkwayFactor** | **Double** | A factor that multiplies the cost when walkways are encountered. | [optional] [default to 1]
**sidewalkFactor** | **Double** | A factor that multiplies the cost when sidewalks are encountered. | [optional] [default to 1]
**alleyFactor** | **Double** | A factor that multiplies the cost when alleys are encountered. | [optional] [default to 2]
**drivewayFactor** | **Double** | A factor that multiplies the cost when driveways are encountered. | [optional] [default to 5]
**stepPenalty** | **Int** | A penalty (in seconds) added to each transition onto a path with steps or stairs. | [optional] [default to 30]
**useFerry** | **Double** | A measure of willingness to take ferries. Values near 0 attempt to avoid ferries, and values near 1 will favour them. Note that as some routes may be impossible without ferries, 0 does not guarantee avoidance of them. | [optional] [default to 0.5]
**useLivingStreets** | **Double** | A measure of willingness to take living streets. Values near 0 attempt to avoid them, and values near 1 will favour them. Note that as some routes may be impossible without living streets, 0 does not guarantee avoidance of them. The default value is 0 for trucks; 0.1 for other motor vehicles; 0.5 for bicycles; and 0.6 for pedestrians. | [optional] 
**useTracks** | **Double** | A measure of willingness to take track roads. Values near 0 attempt to avoid them, and values near 1 will favour them. Note that as some routes may be impossible without track roads, 0 does not guarantee avoidance of them. The default value is 0 for automobiles, busses, and trucks; and 0.5 for all other costing modes. | [optional] 
**useHills** | **Double** | A measure of willingness to take tackle hills. Values near 0 attempt to avoid hills and steeper grades even if it means a longer route, and values near 1 indicates that the user does not fear them. Note that as some routes may be impossible without hills, 0 does not guarantee avoidance of them. | [optional] [default to 0.5]
**useLit** | **Double** | A measure of preference for streets that are lit. 0 indicates indifference toward lit streets, and 1 indicates that unlit streets should be avoided. Note that even with values near 1, there is no guarantee that the returned route will include lit segments. | [optional] [default to 0]
**servicePenalty** | **Int** | A penalty applied to transitions to service roads. This penalty can be used to reduce the likelihood of suggesting a route with service roads unless absolutely necessary. The default penalty is 15 for cars, busses, motor scooters, and motorcycles; and zero for others. | [optional] 
**serviceFactor** | **Double** | A factor that multiplies the cost when service roads are encountered. The default is 1.2 for cars and busses, and 1 for trucks, motor scooters, and motorcycles. | [optional] [default to 1]
**maxHikingDifficulty** | **Int** | The maximum difficulty of hiking trails allowed. This corresponds to the OSM &#x60;sac_scale&#x60;. | [optional] [default to 1]
**bssRentCost** | **Int** | The estimated cost (in seconds) to rent a bicycle from a sharing station in &#x60;bikeshare&#x60; mode. | [optional] [default to 120]
**bssRentPenalty** | **Int** | A penalty (in seconds) to rent a bicycle in &#x60;bikeshare&#x60; mode. | [optional] [default to 0]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


