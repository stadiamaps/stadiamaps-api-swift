# Stadia Maps Swift SDK

[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fstadiamaps%2Fstadiamaps-api-swift%2Fbadge%3Ftype%3Dswift-versions)](https://swiftpackageindex.com/stadiamaps/stadiamaps-api-swift) [![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fstadiamaps%2Fstadiamaps-api-swift%2Fbadge%3Ftype%3Dplatforms)](https://swiftpackageindex.com/stadiamaps/stadiamaps-api-swift)

This SDK helps you access the full range of geospatial APIs from Stadia Maps using Swift. Using Xcode, you'll get
all the goodies like autocomplete, type definitions, and documentation as you type. All API methods leverage the async
features introduced in Swift 5.5, which make it easier than ever to write correct asynchronous code. 

## Installation with Swift Package Mangaer

The Xcode UI changes frequently, but you can usually add packages to your project using an option in the File menu.
Then, you'll need to paste in the repository URL to search: https://github.com/stadiamaps/stadiamaps-api-swift.
See https://developer.apple.com/documentation/xcode/adding-package-dependencies-to-your-app for the latest detailed
instructions from Apple.

<a id="documentation-for-authorization"></a>
## Getting Started

### Authorization

You will need an API key to use the Swift SDK.

You can create an API key for free
[here](https://client.stadiamaps.com/signup/?utm_source=github&utm_campaign=sdk_readme&utm_content=swift_readme)
(no credit card required).

You can configure your API key like so:

```swift
StadiaMapsAPI.customHeaders = ["Authorization": "Stadia-Auth YOUR-API-KEY"]
```

### EU endpoints

If you want to use our EU endpoints to keep traffic within the EU, you can set the `basePath` property.

```swift
StadiaMapsAPI.basePath = "https://api-eu.stadiamaps.com"
```

## Examples

You can find examples of how to call all of our API methods in the [integration tests](tests/).

## Documentation

Official documentation lives at [docs.stadiamaps.com](https://docs.stadiamaps.com/?utm_source=github&utm_campaign=sdk_readme&utm_content=swift_readme),
where we have both long-form prose explanations of each endpoint and an interactive [API reference](https://docs.stadiamaps.com/api-reference/?utm_source=github&utm_campaign=sdk_readme&utm_content=swift_readme).
