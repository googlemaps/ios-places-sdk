// swift-tools-version: 5.5
//
// Copyright 2024 Google LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     https://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import PackageDescription

let package = Package(
  name: "GooglePlaces", platforms: [.iOS(.v14)],
  products: [
    .library(
      name: "GooglePlaces",
      targets: ["GooglePlacesTarget"]),
  ],
  dependencies: [],
  targets: [
    .binaryTarget(name: "GooglePlaces", url: "https://dl.google.com/geosdk/swiftpm/8.5.0/GooglePlaces_3p.xcframework.zip", checksum: "e336ff94e3bd1311d9a0bc5c1f1847220273ff8b976389ba4d7a7ec01bdbe1ea"),
    .target(
      name: "GooglePlacesTarget",
      dependencies: ["GooglePlaces"],
      path: "Places",
      sources: ["GMSEmpty.m"],
      resources: [
        .copy("Resources/GooglePlacesResources/GooglePlaces.bundle")
      ],
      publicHeadersPath: "Sources",
      linkerSettings: [
        .linkedLibrary("c++"),
        .linkedLibrary("z"),
        .linkedFramework("CoreGraphics"),
        .linkedFramework("CoreLocation"),
        .linkedFramework("QuartzCore"),
        .linkedFramework("Security"),
        .linkedFramework("UIKit"),
      ]
    ),
  ]
)
