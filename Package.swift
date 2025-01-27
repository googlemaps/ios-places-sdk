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
      url: "https://dl.google.com/geosdk/swiftpm/9.3.0/GooglePlaces_3p.xcframework.zip",
      checksum: "96e49315561ed8f3e8ea72878e0d71c1fb251907952d991e3585588a47fe496b"
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
        .linkedFramework("QuartzCore"),
        .linkedFramework("Security"),
        .linkedFramework("UIKit"),
      ]
    ),
    .binaryTarget(
      name: "GooglePlacesSwift",
      url: "https://dl.google.com/geosdk/swiftpm/0.4.0/google_places_swift.xcframework.zip",
      checksum: "fa7bfd1a8e6ee489e31d4ddd3e6f9c05f2bcab3d1c2996759220bd56593c372f"
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
