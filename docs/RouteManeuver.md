# RouteManeuver

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **Int** | The type of route maneuver.  | Code | Type                                | |------|-------------------------------------| | 0    | None                                | | 1    | Start                               | | 2    | Start right                         | | 3    | Start left                          | | 4    | Destination                         | | 5    | Destination right                   | | 6    | Destination left                    | | 7    | Becomes                             | | 8    | Continue                            | | 9    | Slight right                        | | 10   | Right                               | | 11   | Sharp right                         | | 12   | U-turn right                        | | 13   | U-turn left                         | | 14   | Sharp left                          | | 15   | Left                                | | 16   | Slight left                         | | 17   | Ramp straight                       | | 18   | Ramp right                          | | 19   | Ramp left                           | | 20   | Exit right                          | | 21   | Exit left                           | | 22   | Stay straight                       | | 23   | Stay right                          | | 24   | Stay left                           | | 25   | Merge                               | | 26   | Enter roundabout                    | | 27   | Exit roundabout                     | | 28   | Enter ferry                         | | 29   | Exit ferry                          | | 30   | Transit                             | | 31   | Transit transfer                    | | 32   | Transit remain on                   | | 33   | Transit connection start            | | 34   | Transit connection transfer         | | 35   | Transit connection destination      | | 36   | Post-transit connection destination | | 37   | Merge right                         | | 38   | Merge left                          |  | 
**instruction** | **String** | The written maneuver instruction. | 
**verbalTransitionAlertInstruction** | **String** | Text suitable for use as a verbal navigation alert. | [optional] 
**verbalPreTransitionInstruction** | **String** | Text suitable for use as a verbal navigation alert immediately prior to the maneuver transition. | [optional] 
**verbalPostTransitionInstruction** | **String** | Text suitable for use as a verbal navigation alert immediately after to the maneuver transition. | [optional] 
**streetNames** | **[String]** | A list of street names that are consistent along the entire maneuver. | [optional] 
**beginStreetNames** | **[String]** | A list of street names at the beginning of the maneuver, if they are different from the names at the end. | [optional] 
**time** | **Double** | The estimated time to complete the entire maneuver, in seconds. | 
**length** | **Double** | The length of the maneuver, in &#x60;units&#x60;. | 
**beginShapeIndex** | **Int** | The index into the list of shape points for the start of the maneuver. | 
**endShapeIndex** | **Int** | The index into the list of shape points for the end of the maneuver. | 
**toll** | **Bool** | True any portion of the maneuver is subject to a toll. | [optional] [default to false]
**rough** | **Bool** | True any portion of the maneuver is unpaved or has portions of rough pavement. | [optional] [default to false]
**gate** | **Bool** | True if a gate is encountered in the course of this maneuver. | [optional] [default to false]
**ferry** | **Bool** | True if a ferry is encountered in the course of this maneuver. | [optional] [default to false]
**sign** | [**ManeuverSign**](ManeuverSign.md) |  | [optional] 
**roundaboutExitCount** | **Int** | The exit number of the roundabout to take after entering. | [optional] 
**departInstruction** | **Int** | The written departure time instruction (typically used in a transit maneuver). | [optional] 
**verbalDepartInstruction** | **Int** | Text suitable for use as a verbal departure time instruction (typically used in a transit maneuver). | [optional] 
**arriveInstruction** | **Int** | The written arrival time instruction (typically used in a transit maneuver). | [optional] 
**verbalArriveInstruction** | **Int** | Text suitable for use as a verbal departure time instruction (typically used in a transit maneuver). | [optional] 
**transitInfo** | **[String: AnyCodable]** | Public transit info (not currently supported). | [optional] 
**verbalMultiCue** | **Bool** | True if the &#x60;verbal_pre_transition_instruction&#x60; has been appended with the verbal instruction of the next maneuver. | [optional] [default to false]
**travelMode** | [**TravelMode**](TravelMode.md) |  | 
**travelType** | **String** |  | 
**bssManeuverType** | **String** | Describes a bike share action when using bikeshare routing. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


