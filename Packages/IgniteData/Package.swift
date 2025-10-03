// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "IgniteData",
    products: [
        .library(
            name: "IgniteData",
            type: .dynamic,
            targets: ["IgniteData"]
        ),
    ],
    targets: [
        .target(
            name: "IgniteData"
        ),
        .testTarget(
            name: "IgniteDataTests",
            dependencies: ["IgniteData"]
        ),
    ]
)
