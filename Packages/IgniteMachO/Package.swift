// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "IgniteMachO",
    platforms: [.macOS(.v26)],
    products: [
        .library(
            name: "IgniteMachO",
            type: .dynamic,
            targets: ["IgniteMachO"]
        ),
    ],
    dependencies: [
        .package(path: "../IgniteFoundation"),
        .package(path: "../IgniteDarwin")
    ],
    targets: [
        .target(
            name: "IgniteMachO",
            dependencies: [
                .product(name: "IgniteFoundation", package: "IgniteFoundation"),
                .product(name: "IgniteDarwin", package: "IgniteDarwin")
            ],
            swiftSettings: [
                .strictMemorySafety(),
                .swiftLanguageMode(.v6)
            ]
        ),
        .testTarget(
            name: "IgniteMachOTests",
            dependencies: ["IgniteMachO"]
        ),
    ]
)
