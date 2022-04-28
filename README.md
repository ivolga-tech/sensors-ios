# MobileSensors

## Installation

### CocoaPods

[CocoaPods](https://cocoapods.org) is a dependency manager for Cocoa projects. For usage and installation instructions, visit their website. To integrate Alamofire into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
pod 'MobileSensors', :source => 'https://github.com/ivolga-tech/sensors-ios'
```
## Usage

```swift
MobileSensorsSDK.setRemoteHost(_ host: Host)
```
Sets host for receiving data.

```swift
MobileSensorsSDK.start()
```
Starts data flow.

```swift
MobileSensorsSDK.stop()
```
Stops data flow.
