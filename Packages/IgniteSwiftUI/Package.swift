// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "IgniteSwiftUI",
    platforms: [.macOS(.v26)],
    products: [
        .library(
            name: "IgniteSwiftUI",
            type: .dynamic,
            targets: ["IgniteSwiftUI"]
        ),
    ],
    dependencies: [
        .package(path: "../IgniteFoundation"),
    ],
    targets: [
        .target(
            name: "IgniteSwiftUI",
            dependencies: [
                .product(name: "IgniteFoundation", package: "IgniteFoundation"),
            ],
            swiftSettings: [
                .strictMemorySafety(),
                .swiftLanguageMode(.v6)
            ]
        ),
        .testTarget(
            name: "IgniteSwiftUITests",
            dependencies: ["IgniteSwiftUI"]
        ),
    ]
)
