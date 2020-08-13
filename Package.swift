// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "Fakery",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "Fakery",
            type: .dynamic,
            targets: ["Fakery"]
        )
    ],
    dependencies: [
    // Test dependencies
    .package(url: "https://github.com/Quick/Quick.git", from: "2.0.0"),
    .package(url: "https://github.com/Quick/Nimble.git", from: "8.0.0"),

    ],
    targets: [
      .target(name: "Fakery"),
      .testTarget(name: "FakeryTests", dependencies: ["Fakery","Quick", "Nimble"], path: "Tests/Fakery")
    ]
)
