// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DemangleKit",
    platforms: [.macOS(.v26)],
    products: [
        .library(
            name: "DemangleKit",
            type: .dynamic,
            targets: ["DemangleKit"]
        )
    ],
    dependencies: [
        .package(path: "../FoundationKit")
    ],
    targets: [
        .target(
            name: "DemangleKit",
            dependencies: [
                .product(name: "FoundationKit", package: "FoundationKit")
            ],
            swiftSettings: [
                .strictMemorySafety(),
                .swiftLanguageMode(.v6)
            ]
        ),
        .testTarget(
            name: "DemangleKitTests",
            dependencies: ["DemangleKit"]
        )
    ]
)
