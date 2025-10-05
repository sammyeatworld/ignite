// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "IgniteData",
    platforms: [.macOS(.v26)],
    products: [
        .library(
            name: "IgniteData",
            type: .dynamic,
            targets: ["IgniteData"]
        ),
    ],
    dependencies: [
        .package(path: "../IgniteFoundation"),
    ],
    targets: [
        .target(
            name: "IgniteData",
            dependencies: [
                .product(name: "IgniteFoundation", package: "IgniteFoundation"),
            ],
            swiftSettings: [
                .strictMemorySafety(),
                .swiftLanguageMode(.v6)
            ]
        ),
        .testTarget(
            name: "IgniteDataTests",
            dependencies: ["IgniteData"]
        ),
    ]
)
