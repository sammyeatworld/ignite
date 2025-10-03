// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "IgniteFoundation",
    products: [
        .library(
            name: "IgniteFoundation",
            targets: ["IgniteFoundation"]
        ),
    ],
    targets: [
        .target(
            name: "IgniteFoundation"
        ),
        .testTarget(
            name: "IgniteFoundationTests",
            dependencies: ["IgniteFoundation"]
        ),
    ]
)
