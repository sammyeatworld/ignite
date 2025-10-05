// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "IgniteDarwin",
    platforms: [.macOS(.v26)],
    products: [
        .library(
            name: "IgniteDarwin",
            type: .dynamic,
            targets: ["IgniteDarwin"]
        ),
    ],
    dependencies: [
        .package(path: "../IgniteFoundation"),
    ],
    targets: [
        .target(
            name: "IgniteDarwin",
            dependencies: [
                .product(name: "IgniteFoundation", package: "IgniteFoundation"),
            ],
            swiftSettings: [
                .strictMemorySafety(),
                .swiftLanguageMode(.v6)
            ]
        ),
    ]
)
