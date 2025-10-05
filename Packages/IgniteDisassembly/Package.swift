// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "IgniteDisassembly",
    platforms: [.macOS(.v26)],
    products: [
        .library(
            name: "IgniteDisassembly",
            type: .dynamic,
            targets: ["IgniteDisassembly"]
        ),
    ],
    dependencies: [
        .package(path: "../IgniteFoundation"),
    ],
    targets: [
        .target(
            name: "IgniteDisassembly",
            dependencies: [
                .product(name: "IgniteFoundation", package: "IgniteFoundation"),
            ],
            swiftSettings: [
                .strictMemorySafety(),
                .swiftLanguageMode(.v6)
            ]
        ),
        .testTarget(
            name: "IgniteDisassemblyTests",
            dependencies: ["IgniteDisassembly"]
        ),
    ]
)
