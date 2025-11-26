// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FoundationKit",
    platforms: [.macOS(.v26)],
    products: [
        .library(
            name: "FoundationKit",
            type: .dynamic,
            targets: ["FoundationKit"]
        )
    ],
    targets: [
        .target(
            name: "FoundationKit",
            swiftSettings: [
                .strictMemorySafety(),
                .swiftLanguageMode(.v6)
            ]
        ),
        .testTarget(
            name: "FoundationKitTests",
            dependencies: ["FoundationKit"]
        )
    ]
)
