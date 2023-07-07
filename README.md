# Stadia Maps Swift SDK

This SDK helps you access the full range of geospatial APIs from Stadia Maps using Swift. Using Xcode, you'll get
all the goodies like autocomplete, type definitions, and documentation as you type.

All API methods leverage the async features introduced in Swift 5.5, which make it easier than ever to write correct
asynchronous code. You can find examples of how to call all of our API methods in the
[integration tests](tests/).

## Installation with Swift Package Mangaer

The Xcode UI changes frequently, but you can usually add packages to your project using an option in the File menu.
Then, you'll need to paste in the repository URL to search: https://github.com/stadiamaps/stadiamaps-api-swift.
See https://developer.apple.com/documentation/xcode/adding-package-dependencies-to-your-app for the latest detailed
instructions from Apple.

<a id="documentation-for-authorization"></a>
## Configuration

### Authorization

You will need an API key to use the Swift SDK. Learn how to get one for free: https://docs.stadiamaps.com/authentication/#generating-and-revoking-api-keys

You can configure your API key like so:

```swift
StadiaMapsAPI.customHeaders = ["Authorization": "Stadia-Auth YOUR-API-KEY"]
```

### EU endpoints

If you want to use our EU endpoints to keep traffic within the EU, you can set the `basePath` property.

```swift
StadiaMapsAPI.basePath = "https://api-eu.stadiamaps.com"
```
