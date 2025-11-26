// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DebugKit",
    platforms: [.macOS(.v26)],
    products: [
        .library(
            name: "DebugKit",
            type: .dynamic,
            targets: ["DebugKit"]
        )
    ],
    dependencies: [
        .package(path: "../FoundationKit"),
        .package(path: "../DarwinKit")
    ],
    targets: [
        .target(
            name: "DebugKit",
            dependencies: [
                .product(name: "FoundationKit", package: "FoundationKit"),
                .product(name: "DarwinKit", package: "DarwinKit")
            ],
            swiftSettings: [
                .strictMemorySafety(),
                .swiftLanguageMode(.v6)
            ]
        ),
        .testTarget(
            name: "DebugKitTests",
            dependencies: ["DebugKit"]
        )
    ]
)
