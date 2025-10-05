// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "IgniteGraph",
    platforms: [.macOS(.v26)],
    products: [
        .library(
            name: "IgniteGraph",
            type: .dynamic,
            targets: ["IgniteGraph"]
        ),
    ],
    dependencies: [
        .package(path: "../IgniteFoundation"),
        .package(path: "../IgniteSwiftUI"),
    ],
    targets: [
        .target(
            name: "IgniteGraph",
            dependencies: [
                .product(name: "IgniteFoundation", package: "IgniteFoundation"),
                .product(name: "IgniteSwiftUI", package: "IgniteSwiftUI")
            ],
            swiftSettings: [
                .strictMemorySafety(),
                .swiftLanguageMode(.v6)
            ]
        ),
        .testTarget(
            name: "IgniteGraphTests",
            dependencies: ["IgniteGraph"]
        ),
    ]
)
