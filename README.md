# MobileSensors

## Installation

### CocoaPods

[CocoaPods](https://cocoapods.org) is a dependency manager for Cocoa projects. For usage and installation instructions, visit their website. To integrate MobileSensors into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
.....
source 'https://github.com/ivolga-tech/sensors-ios' # for MobileSensors
source 'https://cdn.cocoapods.org/' # for dependencies of MobileSensors

.....
pod 'MobileSensors', :source => 'https://github.com/ivolga-tech/sensors-ios'
.....
```
## Usage

### Capture motion sensors data

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

### Capture user events/actions

```swift
MobileSensorsSDK.identifyUser(uniqueID: String)
```
Helps to identify one's app user with its events.

```swift
MobileSensorsSDK.resetUser()
```
Reset any user state.
This may be useful when a user logs out and you want to clear the user's identity in tracker.

```swift
MobileSensorsSDK.captureEnteraction(name: String, properties: [String : Any]? = nil)
MobileSensorsSDK.captureScreen(_ screenTitle: String, properties: [String : Any]? = nil)
```
Captures custom enteraction and screen change with additional data.

```swift
MobileSensorsSDK.flushQueuedEvents()
```
Force sending of all queued events from dynamic memory of the device.

```swift
MobileSensorsSDK.enableTracking()
MobileSensorsSDK.disableTracking()
```
Enables and disables events capturing.
