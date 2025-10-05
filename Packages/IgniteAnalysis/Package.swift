// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "IgniteAnalysis",
    platforms: [.macOS(.v26)],
    products: [
        .library(
            name: "IgniteAnalysis",
            type: .dynamic,
            targets: ["IgniteAnalysis"]
        ),
    ],
    dependencies: [
        .package(path: "../IgniteFoundation"),
        .package(path: "../IgniteDarwin")
    ],
    targets: [
        .target(
            name: "IgniteAnalysis",
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
            name: "IgniteAnalysisTests",
            dependencies: ["IgniteAnalysis"]
        ),
    ]
)
