// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DataKit",
    platforms: [.macOS(.v26)],
    products: [
        .library(
            name: "DataKit",
            type: .dynamic,
            targets: ["DataKit"]
        ),
    ],
    dependencies: [
        .package(path: "../FoundationKit"),
    ],
    targets: [
        .target(
            name: "DataKit",
            dependencies: [
                .product(name: "FoundationKit", package: "FoundationKit"),
            ],
            swiftSettings: [
                .strictMemorySafety(),
                .swiftLanguageMode(.v6)
            ]
        ),
        .testTarget(
            name: "DataKitTests",
            dependencies: ["DataKit"]
        ),
    ]
)
