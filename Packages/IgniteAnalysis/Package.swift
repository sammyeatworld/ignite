// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "IgniteAnalysis",
    products: [
        .library(
            name: "IgniteAnalysis",
            type: .dynamic,
            targets: ["IgniteAnalysis"]
        ),
    ],
    targets: [
        .target(
            name: "IgniteAnalysis"
        ),
        .testTarget(
            name: "IgniteAnalysisTests",
            dependencies: ["IgniteAnalysis"]
        ),
    ]
)
