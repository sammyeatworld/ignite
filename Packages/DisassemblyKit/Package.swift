// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DisassemblyKit",
    platforms: [.macOS(.v26)],
    products: [
        .library(
            name: "DisassemblyKit",
            type: .dynamic,
            targets: ["DisassemblyKit"]
        ),
    ],
    dependencies: [
        .package(path: "../FoundationKit"),
    ],
    targets: [
        .target(
            name: "DisassemblyKit",
            dependencies: [
                .product(name: "FoundationKit", package: "FoundationKit"),
            ],
            swiftSettings: [
                .strictMemorySafety(),
                .swiftLanguageMode(.v6)
            ]
        ),
        .testTarget(
            name: "DisassemblyKitTests",
            dependencies: ["DisassemblyKit"]
        ),
    ]
)
