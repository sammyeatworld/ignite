// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftUIKit",
    platforms: [.macOS(.v26)],
    products: [
        .library(
            name: "SwiftUIKit",
            type: .dynamic,
            targets: ["SwiftUIKit"]
        ),
    ],
    dependencies: [
        .package(path: "../FoundationKit"),
    ],
    targets: [
        .target(
            name: "SwiftUIKit",
            dependencies: [
                .product(name: "FoundationKit", package: "FoundationKit"),
            ],
            swiftSettings: [
                .strictMemorySafety(),
                .swiftLanguageMode(.v6)
            ]
        ),
        .testTarget(
            name: "SwiftUIKitTests",
            dependencies: ["SwiftUIKit"]
        ),
    ]
)
