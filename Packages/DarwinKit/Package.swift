// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DarwinKit",
    platforms: [.macOS(.v26)],
    products: [
        .library(
            name: "DarwinKit",
            type: .dynamic,
            targets: ["DarwinKit"]
        ),
    ],
    dependencies: [
        .package(path: "../FoundationKit"),
    ],
    targets: [
        .target(
            name: "DarwinKit",
            dependencies: [
                .product(name: "FoundationKit", package: "FoundationKit"),
            ],
            swiftSettings: [
                .strictMemorySafety(),
                .swiftLanguageMode(.v6)
            ]
        ),
        .testTarget(
            name: "DarwinKitTests",
            dependencies: ["DarwinKit"]
        ),
    ]
)
