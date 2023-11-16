// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "GooglePlaces",
  products: [
    // Products define the executables and libraries a package produces, and make them visible to other packages.
    .library(
      name: "GooglePlaces",
      targets: ["GooglePlacesTarget"]),
  ],
  dependencies: [
    // Dependencies declare other packages that this package depends on.
    // .package(url: /* package url */, from: "1.0.0"),
  ],
  targets: [
    // Targets are the basic building blocks of a package. A target can define a module or a test suite.
    // Targets can depend on other targets in this package, and on products in packages this package depends on.
    .binaryTarget(name: "GooglePlaces", url: "https://dl.google.com/geosdk/swiftpm/8.3.0/GooglePlaces_3p.xcframework.zip", checksum: "fc5539677cdf6c0ce32f04af6f347abdc918f49c5b84a60d6ea90eef058b2ef3"),
    .target(
      name: "GooglePlacesTarget",
      dependencies: ["GooglePlaces"],
      path: "GooglePlaces",
      sources: ["dummy.m"],
      resources: [
        .copy("Resources/GooglePlaces.bundle")
      ],
      publicHeadersPath: "Sources"
    ),
  ]
)


