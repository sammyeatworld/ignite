// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "IgniteFoundation",
    platforms: [.macOS(.v26)],
    products: [
        .library(
            name: "IgniteFoundation",
            type: .dynamic,
            targets: ["IgniteFoundation"]
        ),
    ],
    targets: [
        .target(
            name: "IgniteFoundation",
            swiftSettings: [
                .strictMemorySafety(),
                .swiftLanguageMode(.v6)
            ]
        ),
        .testTarget(
            name: "IgniteFoundationTests",
            dependencies: ["IgniteFoundation"]
        ),
    ]
)
