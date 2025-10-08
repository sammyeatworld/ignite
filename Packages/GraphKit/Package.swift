// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GraphKit",
    platforms: [.macOS(.v26)],
    products: [
        .library(
            name: "GraphKit",
            type: .dynamic,
            targets: ["GraphKit"]
        ),
    ],
    dependencies: [
        .package(path: "../FoundationKit"),
        .package(path: "../SwiftUIKit"),
    ],
    targets: [
        .target(
            name: "GraphKit",
            dependencies: [
                .product(name: "FoundationKit", package: "FoundationKit"),
                .product(name: "SwiftUIKit", package: "SwiftUIKit")
            ],
            swiftSettings: [
                .strictMemorySafety(),
                .swiftLanguageMode(.v6)
            ]
        ),
        .testTarget(
            name: "GraphKitTests",
            dependencies: ["GraphKit"]
        ),
    ]
)
