// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NaverLogin-SPM",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "NaverLogin-SPM",
            targets: ["NaverLogin-SPM"]
        ),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "NaverThirdPartyLogin",
            path: "./Frameworks/NaverThirdPartyLogin.xcframework"
        ),
        .target(
            name: "NaverLogin-SPM",
            dependencies: ["NaverThirdPartyLogin"]
        )
    ]
)
