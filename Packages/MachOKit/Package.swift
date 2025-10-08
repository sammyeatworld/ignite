// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MachOKit",
    platforms: [.macOS(.v26)],
    products: [
        .library(
            name: "MachOKit",
            type: .dynamic,
            targets: ["MachOKit"]
        ),
    ],
    dependencies: [
        .package(path: "../FoundationKit"),
        .package(path: "../DarwinKit")
    ],
    targets: [
        .target(
            name: "MachOKit",
            dependencies: [
                .product(name: "FoundationKit", package: "FoundationKit"),
                .product(name: "DarwinKit", package: "DarwinKit")
            ],
            swiftSettings: [
                .strictMemorySafety(),
                .swiftLanguageMode(.v6)
            ]
        ),
        .testTarget(
            name: "MachOKitTests",
            dependencies: ["MachOKit"]
        ),
    ]
)
