// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SyntaxKit",
    platforms: [.macOS(.v26)],
    products: [
        .library(
            name: "SyntaxKit",
            type: .dynamic,
            targets: ["SyntaxKit"]
        ),
    ],
    dependencies: [
        .package(path: "../FoundationKit"),
    ],
    targets: [
        .target(
            name: "SyntaxKit",
            dependencies: [
                .product(name: "FoundationKit", package: "FoundationKit"),
            ],
            swiftSettings: [
                .strictMemorySafety(),
                .swiftLanguageMode(.v6)
            ]
        ),
        .testTarget(
            name: "SyntaxKitTests",
            dependencies: ["SyntaxKit"]
        ),
    ]
)
