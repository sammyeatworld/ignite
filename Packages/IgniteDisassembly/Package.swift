// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "IgniteDisassembly",
    products: [
        .library(
            name: "IgniteDisassembly",
            type: .dynamic,
            targets: ["IgniteDisassembly"]
        ),
    ],
    targets: [
        .target(
            name: "IgniteDisassembly"
        ),
        .testTarget(
            name: "IgniteDisassemblyTests",
            dependencies: ["IgniteDisassembly"]
        ),
    ]
)
