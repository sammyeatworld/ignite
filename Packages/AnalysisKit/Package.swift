// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AnalysisKit",
    platforms: [.macOS(.v26)],
    products: [
        .library(
            name: "AnalysisKit",
            type: .dynamic,
            targets: ["AnalysisKit"]
        )
    ],
    dependencies: [
        .package(path: "../FoundationKit"),
    ],
    targets: [
        .target(
            name: "AnalysisKit",
            dependencies: [
                .product(name: "FoundationKit", package: "FoundationKit"),
            ],
            swiftSettings: [
                .strictMemorySafety(),
                .swiftLanguageMode(.v6)
            ]
        ),
        .testTarget(
            name: "AnalysisKitTests",
            dependencies: ["AnalysisKit"]
        )
    ]
)
