// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SymbolKit",
    platforms: [.macOS(.v26)],
    products: [
        .library(
            name: "SymbolKit",
            type: .dynamic,
            targets: ["SymbolKit"]
        ),
    ],
    dependencies: [
        .package(path: "../FoundationKit"),
    ],
    targets: [
        .target(
            name: "SymbolKit",
            dependencies: [
                .product(name: "FoundationKit", package: "FoundationKit"),
            ],
            swiftSettings: [
                .strictMemorySafety(),
                .swiftLanguageMode(.v6)
            ]
        ),
        .testTarget(
            name: "SymbolKitTests",
            dependencies: ["SymbolKit"]
        ),
    ]
)
