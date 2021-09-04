## Version 2.0.0

### Enhancements
* [New framework architecture](https://github.com/chrs1885/Capable/issues/53) that makes contributing support for upcoming accessibility settings easier
* Uses Swift Package project template

### Features
* [Adds iOS 14 APIs: prefersCrossFadeTransitions & buttonShapesEnabled](https://github.com/chrs1885/Capable/issues/60)

### Breaking Changes

We are going to focus on an unified API for Apple accessibility settings, so we decided to drop

* scalable fonts extension
* handicap APIs used for grouping accessibility settings
* support for iOS 11, macOS 10.12, tvOS11, and watchOS 3
* WCAG color extension which moved to its own repository: [WCAG-Colors](https://github.com/chrs1885/WCAG-Colors)

## Version 1.1.4

### Bugfixes
* Fix macOS deployment target info of subspec definitions.

## Version 1.1.3

### Bugfixes
* [Fix naming collisions with SwiftUI](https://github.com/chrs1885/Capable/pull/51)

## Version 1.1.2

### Bugfixes
* [Add Carthage support by sharing Pod schemes](https://github.com/chrs1885/Capable/pull/49) *(Thanks to @jefflen)*

## Version 1.1.1

### Enhancements
* Add SPM support for iOS, macOS, tvOS, and watchOS
* Update project structure to match the CocoaPods lib template
* Improve development tooling by adding SwiftFormat, SwiftLint, and SourceDocs (replacement for Jazzy)

## Version 1.1.0

### Features
* [Support iOS 13 accessibility settings](https://github.com/chrs1885/Capable/issues/43)
* [Support caption color calculation for background images](https://github.com/chrs1885/Capable/issues/45)

## Version 1.0.1

### Enhancements
* Add text-property to `ConformanceLevel`

### Bugfixes
* Fix bug when using Capable 1.0.0 along with SheetyColors 0.3.0

## Version 1.0.0

### Enhancements
* Swift 5.0 and Xcode 10.2 support

## Version 0.9.0

### Features
* [Add WCAG colors extension](https://github.com/chrs1885/Capable/issues/39)
* [Add feature hearingDevice on iOS](https://github.com/chrs1885/Capable/issues/38)

### Enhancements
* [CocoaPods subspec for UIFontMetrics/UIFont extension](https://github.com/chrs1885/Capable/issues/35)

## Version 0.8.0

### Features
* [Add notifications for accessibility feature changes on macOS](https://github.com/chrs1885/Capable/issues/31)
* [Support debug logging](https://github.com/chrs1885/Capable/issues/29)

### Enhancements
* [Provide contribution guidelines](https://github.com/chrs1885/Capable/issues/30)

## Version 0.7.0

### Features
* [Add fullKeyboardAccess feature on macOS](https://github.com/chrs1885/Capable/issues/26)

### Enhancements
* [Swift 4.2 and Xcode 10 support](https://github.com/chrs1885/Capable/pull/28)

## Version 0.6.0

### Enhancements
* [Refactor architecture of statuses modules](https://github.com/chrs1885/Capable/pull/25)
* Improve test coverage

### Bugfixes
* [Fix isMonoAudioEnabled accessibility method](https://github.com/chrs1885/Capable/pull/24) *(Thanks to @edwellbrook)*

## Version 0.5.0

### Features
* [New Handicap type for client-side grouping of accessibility features](https://github.com/chrs1885/Capable/issues/21)

### Bugfixes
* [Fix CocoaPods documentation link](https://github.com/chrs1885/Capable/issues/22)
* tvOS: Post `CapableFeatureStatusDidChange` if `.invertColors` feature status changes

## Version 0.4.0

### Enhancements
* [Separate issue templates for bug and feature request](https://github.com/chrs1885/Capable/issues/18)
* [Swift package manager support](https://github.com/chrs1885/Capable/issues/12)

## Version 0.3.0

### Features
* [MacOS support](https://github.com/chrs1885/Capable/issues/1)

## Version 0.2.0

### Enhancements
* [Add font overview to watch example](https://github.com/chrs1885/Capable/issues/7)
* [Generated code documentation](https://github.com/chrs1885/Capable/issues/10)
* [Add SwiftLint](https://github.com/chrs1885/Capable/issues/8)

### Bugfixes
* [Capable framework not found in Example application](https://github.com/chrs1885/Capable/issues/4)
* [Fix Bitrise.io badge in Readme](https://github.com/chrs1885/Capable/issues/5)