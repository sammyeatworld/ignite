// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PluginKit",
    platforms: [.macOS(.v26)],
    products: [
        .library(
            name: "PluginKit",
            type: .dynamic,
            targets: ["PluginKit"]
        ),
    ],
    dependencies: [
        .package(path: "../FoundationKit"),
    ],
    targets: [
        .target(
            name: "PluginKit",
            dependencies: [
                .product(name: "FoundationKit", package: "FoundationKit"),
            ],
            swiftSettings: [
                .strictMemorySafety(),
                .swiftLanguageMode(.v6)
            ]
        ),
        .testTarget(
            name: "PluginKitTests",
            dependencies: ["PluginKit"]
        ),
    ]
)
