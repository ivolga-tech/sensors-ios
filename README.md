# MobileSensors

## Installation

### CocoaPods

[CocoaPods](https://cocoapods.org) is a dependency manager for Cocoa projects. For usage and installation instructions, visit their website. To integrate HumanSignals into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
.....
source 'https://github.com/ivolga-tech/sensors-ios' # for HumanSignals
source 'https://cdn.cocoapods.org/' # for dependencies of HumanSignals

.....
pod 'HumanSignals', :source => 'https://github.com/ivolga-tech/sensors-ios'
.....
```
## Usage

### Capture motion sensors data

```swift
HumanSignalsSDK.setRemoteHost(_ host: Host)
```
Sets host for receiving data in the form like "https://example.com".

```swift
HumanSignalsSDK.start()
```
Starts data flow.

```swift
HumanSignalsSDK.stop()
```
Stops data flow.

### Capture user events/actions

```swift
HumanSignalsSDK.identifyUser(uniqueID: String)
```
Helps to identify one's app user with its events.

```swift
HumanSignalsSDK.resetUser()
```
Reset any user state.
This may be useful when a user logs out and you want to clear the user's identity in tracker.

```swift
HumanSignalsSDK.captureEnteraction(name: String, properties: [String : Any]? = nil)
HumanSignalsSDK.captureScreen(_ screenTitle: String, properties: [String : Any]? = nil)
```
Captures custom enteraction and screen change with additional data.

```swift
HumanSignalsSDK.flushQueuedEvents()
```
Force sending of all queued events from dynamic memory of the device.

```swift
HumanSignalsSDK.enableTracking()
HumanSignalsSDK.disableTracking()
```
Enables and disables events capturing.
