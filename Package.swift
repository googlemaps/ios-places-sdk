// swift-tools-version: 5.7
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
  name: "GooglePlaces", platforms: [.iOS(.v16)],
  products: [
    .library(name: "GooglePlaces", targets: ["GooglePlacesTarget"]),
    .library(name: "GooglePlacesSwift", targets: ["GooglePlacesSwiftTarget"]),
  ], dependencies: [],
  targets: [
    .binaryTarget(
      name: "GooglePlaces",
      url: "https://dl.google.com/geosdk/swiftpm/10.13.0/GooglePlaces_3p.xcframework.zip",
      checksum: "0632dec642f56873e0301cce828483994804c802be43c5aded3b74754a8f12b3"
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
      url: "https://dl.google.com/geosdk/swiftpm/10.12.0/google_places_swift.xcframework.zip",
      checksum: "2193a385bd2fbfa1c508b685409b84c5dcf4b31fa470a47da878c38a46ecfae7"
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
