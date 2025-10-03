// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "IgniteSwiftUI",
    products: [
        .library(
            name: "IgniteSwiftUI",
            targets: ["IgniteSwiftUI"]
        ),
    ],
    targets: [
        .target(
            name: "IgniteSwiftUI"
        ),
        .testTarget(
            name: "IgniteSwiftUITests",
            dependencies: ["IgniteSwiftUI"]
        ),
    ]
)
