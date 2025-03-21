// swift-tools-version: 5.5
//
// Copyright 2024 Google LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import PackageDescription

let package = Package(
  name: "GooglePlaces", platforms: [.iOS(.v15)],
  products: [
    .library(name: "GooglePlaces", targets: ["GooglePlacesTarget"]),
    .library(name: "GooglePlacesSwift", targets: ["GooglePlacesSwiftTarget"]),
  ], dependencies: [],
  targets: [
    .binaryTarget(
      name: "GooglePlaces",
      url: "https://dl.google.com/geosdk/swiftpm/9.4.1/GooglePlaces_3p.xcframework.zip",
      checksum: "2013d90eeac96e7481c8d09599d8fd5f2be362525136dd0845a2d3f1f68a0be2"
    ),
    .target(
      name: "GooglePlacesTarget",
      dependencies: ["GooglePlaces"],
      path: "Places",
      sources: ["GMSEmpty.m"],
      resources: [.copy("Resources/GooglePlacesResources/GooglePlaces.bundle")],
      publicHeadersPath: "Sources",
      linkerSettings: [
        .linkedLibrary("c++"),
        .linkedLibrary("z"),
        .linkedFramework("CoreGraphics"),
        .linkedFramework("CoreLocation"),
        .linkedFramework("CoreText"),
        .linkedFramework("QuartzCore"),
        .linkedFramework("Security"),
        .linkedFramework("UIKit"),
      ]
    ),
    .binaryTarget(
      name: "GooglePlacesSwift",
      url: "https://dl.google.com/geosdk/swiftpm/0.5.1/google_places_swift.xcframework.zip",
      checksum: "d5c8974d3d1c9a64fc33ffc2a94ae4169b2e286b84d00a415af3bbb6ba1d2a83"
    ),
    .target(
      name: "GooglePlacesSwiftTarget",
      dependencies: [
        "GooglePlacesSwift",
        "GooglePlacesTarget",
      ],
      path: "PlacesSwift",
      sources: ["Empty.swift"],
      resources: [.copy("Resources/GooglePlacesSwiftResources/GooglePlacesSwift.bundle")],
      publicHeadersPath: "Sources"
    ),
  ]
)
