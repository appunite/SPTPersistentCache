// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "SPTPersistentCache",
    platforms: [
        .iOS(.v15),
        .macOS(.v11),
        .tvOS(.v15)
    ],
    products: [
        .library(name: "SPTPersistentCache", targets: ["SPTPersistentCache"])
    ],
    targets: [
        .target(
            name: "SPTPersistentCache",
            path: ".",
            exclude: [
                "SPTPersistentCacheFramework",
                "SPTPersistentCacheDemo",
                "SPTPersistentCache.xcodeproj",
                "SPTPersistentCache.xcworkspace",
                "Tests",
                "Viewer",
                "ci",
                "SPTPersistentCache.podspec",
                "project.xcconfig",
                "banner@2x.png",
                "SPTPersistentCacheViewer.png",
                "CHANGELOG.md",
                "CONTRIBUTING.md",
                "README.md",
                "codecov.yml"
            ],
            sources: ["Sources"],
            publicHeadersPath: "include/SPTPersistentCache",
            cSettings: [
                .headerSearchPath("Sources"),
                .headerSearchPath("include")
            ]
        )
    ]
)
