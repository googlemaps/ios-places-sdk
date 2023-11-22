// swift-tools-version: 5.7

//
// Copyright 2023 Google LLC
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
  name: "GooglePlaces",
  products: [
    .library(
      name: "GooglePlaces",
      targets: ["GooglePlacesTarget"]),
  ],
  dependencies: [],
  targets: [
    .binaryTarget(name: "GooglePlaces", url: "https://dl.google.com/geosdk/swiftpm/8.3.0/GooglePlaces_3p.xcframework.zip", checksum: "fc5539677cdf6c0ce32f04af6f347abdc918f49c5b84a60d6ea90eef058b2ef3"),
    .target(
      name: "GooglePlacesTarget",
      dependencies: ["GooglePlaces"],
      path: "GooglePlaces",
      sources: ["GMSEmpty.m"],
      resources: [
        .copy("Resources/GooglePlaces.bundle")
      ],
      publicHeadersPath: "Sources"
    ),
  ]
)
