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
  name: "GooglePlaces", platforms: [.iOS(.v15)],
  products: [
    .library(
      name: "GooglePlaces",
      targets: ["Places"]),
  ],
  dependencies: [],
  targets: [
    .binaryTarget(
      name: "GooglePlaces",
      url: "https://dl.google.com/geosdk/swiftpm/9.0.0/GooglePlaces_3p.xcframework.zip",
      checksum: "61e4a3214a55f74937d66a6fe451dd934bef7cec05029850b95bcac7c5ebd963"
    ),
    .target(
      name: "Places",
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
        .linkedFramework("QuartzCore"),
        .linkedFramework("Security"),
        .linkedFramework("UIKit"),
      ]
    ),
  ]
)
