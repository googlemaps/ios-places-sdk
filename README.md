<!--* freshness: { exempt: true } *-->

# Swift package for the Google Places SDK For iOS

## Description

This repository contains the Swift packages for the
[Places SDK for iOS](https://developers.google.com/maps/documentation/places/ios-sdk)
and
[Places Swift SDK for iOS (Preview)](https://developers.google.com/maps/documentation/places/ios-sdk/reference/swift/Classes).
For additional methods of installing the Places and Places Swift SDKs for iOS
(Preview) including CocoaPods, see the Places SDK for iOS
[documentation](https://developers.google.com/maps/documentation/places/ios-sdk/config).

## Addition of GooglePlacesSwift to this repository

As of November 11, 2024 this GitHub repository now contains the latest versions
of both `GooglePlaces` and `GooglePlacesSwift` Swift Packages. Visit
[the developer documentation](https://developers.google.com/maps/documentation/places/ios-sdk/google-places-swift)
to learn more about the Places Swift SDK for iOS (Preview).

> [!TIP] The version of the GitHub release matches the version of
> `GooglePlaces`, but not the version of `GooglePlacesSwift` (Preview). We take
> care of the version dependency between GooglePlaces and GooglePlacesSwift in
> the package manifest. For example: To use version 9.2.0 of GooglePlaces,
> select 9.2.0 on the Xcode package dependency screen. To use version 0.3.0 of
> GooglePlacesSwift, you must choose the corresponding version of the
> GooglePlaces, which is 9.2.0.

### Migration from `GooglePlaces` to `GooglePlacesSwift` (Preview)

If you have been using GooglePlaces through this GitHub repository and now would
like to also try GooglePlacesSwift,
[delete that package dependency in Xcode](https://developer.apple.com/documentation/xcode/adding-package-dependencies-to-your-app#Delete-a-package-dependency),
then follow the [installation instructions](#installation) to add the package
dependency again from `https://github.com/googlemaps/ios-places-sdk`, choosing
version `9.2.0` or later.

This time, on the **Choose Package Products** window, add the
`GooglePlacesSwift` library to your project's target.

### Migration from `GooglePlacesSwift` (Preview) v0.2.0 and earlier

If you have been using `GooglePlacesSwift` through a different GitHub
repository,
[delete that package dependency in Xcode](https://developer.apple.com/documentation/xcode/adding-package-dependencies-to-your-app#Delete-a-package-dependency),
then follow the [installation instructions](#installation) to add the package
dependency from `https://github.com/googlemaps/ios-places-sdk`, choosing version
`9.2.0` or later.

This time, on the **Choose Package Products** window, add the
`GooglePlacesSwift` library to your project's target.

**Note:** If you try to add `GooglePlacesSwift` from a deprecated repository,
you will see the following error message: `Failed to resolve dependencies
Dependencies could not be resolved because no versions of 'ios-places-swift-sdk'
match the requirement 0.2.0 and root depends on 'ios-places-swift-sdk' 0.2.0.`

## Requirements

-   [Xcode](https://developer.apple.com/xcode/) version 15.0 or later
-   An app targeting iOS 15 or later
-   A Google Maps Platform
    [project](https://developers.google.com/maps/documentation/places/ios-sdk/cloud-setup)
    with the Places API enabled.
-   An
    [API key](https://developers.google.com/maps/documentation/places/ios-sdk/get-api-key)
    associated with the project above.

## Installation

1.  Follow the instructions for
    [adding package dependencies to your app in Xcode](https://developer.apple.com/documentation/xcode/adding-package-dependencies-to-your-app).

2.  In the "Enter Package URL" field, enter this GitHub repository:

    ```
    https://github.com/googlemaps/ios-places-sdk
    ```

3.  Select the
    [version](https://developers.google.com/maps/documentation/places/ios-sdk/versions)
    of the Places SDK for iOS that you want to use. For new projects, we
    recommend specifying the latest version and using the "Exact Version"
    option.

4.  Follow the
    [instructions](https://developers.google.com/maps/documentation/places/ios-sdk/config#get-an-api-key)
    to add your API key to your app.

## Sample App

See samples demonstrating use of the Places SDK for iOS on
[developers.google.com](https://developers.google.com/maps/documentation/places/ios-sdk/code-samples)
or on [GitHub](https://github.com/googlemaps-samples/maps-sdk-for-ios-samples).

See samples demonstrating use of the Places Swift SDK for iOS on [GitHub](https://github.com/googlemaps-samples/ios-places-sdk-samples).

## Documentation

Documentation for the Places SDK for iOS is available as
[guides](https://developers.google.com/maps/documentation/places/ios-sdk) and
[reference documentation](https://developers.google.com/maps/documentation/places/ios-sdk/reference).

## Contributing

External contributions are not accepted for this repository, per the
[Contributing guide](https://github.com/googlemaps/ios-places-sdk/blob/main/CONTRIBUTING.md).

## Terms of Service

This package uses Google Maps Platform services, and any use of Google Maps
Platform is subject to the
[Terms of Service](https://cloud.google.com/maps-platform/terms).

## Support

This repository is offered via an open source license. It is not governed by the
Google Maps Platform Support
[Technical Support Services Guidelines](https://cloud.google.com/maps-platform/terms/tssg),
the [SLA](https://cloud.google.com/maps-platform/terms/sla), or the
[Deprecation Policy](https://cloud.google.com/maps-platform/terms) (however, any
Google Maps Platform services used by the library remain subject to the Google
Maps Platform Terms of Service).

This repository adheres to [semantic versioning](https://semver.org/) to
indicate when backwards-incompatible changes are introduced.

-   For issues with the Places SDK for iOS,
    [file an issue](https://developers.google.com/maps/documentation/places/ios-sdk/support#issue-tracker)
    on the Places SDK for iOS issue tracker or
    [open a support case](https://developers.google.com/maps/documentation/places/ios-sdk/support#contact-maps-support).
-   If you find a bug with the Swift package, please
    [file an issue](https://github.com/googlemaps/ios-places-sdk/issues) on
    GitHub.

If you would like to get answers to technical questions from other Google Maps
Platform developers, ask through one of our
[developer community channels](https://developers.google.com/maps/developer-community).
You can also discuss this library on the Google Maps Platform
[Discord server](https://discord.gg/hYsWbmk).
