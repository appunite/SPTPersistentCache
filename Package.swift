// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SPTPersistentCache",
    products: [
        .library(
            name: "SPTPersistentCache",
            targets: ["SPTPersistentCache"]
        ),
    ],
    targets: [
        .target(
            name: "SPTPersistentCache",
            publicHeadersPath: "."
        ),
        .testTarget(
            name: "SPTPersistentCacheTests",
            dependencies: ["SPTPersistentCache"]
        ),
    ]
)
