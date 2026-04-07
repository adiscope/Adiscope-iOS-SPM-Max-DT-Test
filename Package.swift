// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AdiscopeMediaMaxAdapterDT",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "AdiscopeMediaMaxAdapterDT",
            targets: ["AdiscopeMediaMaxDTTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.5.1"),
    ],
    targets: [
        .target(
            name: "AdiscopeMediaMaxDTTarget",
            dependencies: [
                .target(name: "REVUPMediaMaxAdapterMoloco"),
                .target(name: "REVUPMediaMaxAdapterMolocoMediationAdapter"),
                .target(name: "MolocoSDK"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterMoloco",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.0.0/REVUPMediaMaxAdapterMoloco.zip",
            checksum: "e5af035c8aab68c00b75a6483d81567b99e9fb185ca039546e4d4864eb40c7f0"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterMolocoMediationAdapter",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.0.0/AppLovinMediationMolocoAdapter.xcframework.zip",
            checksum: "02f625f5ec197b00e4639c68d149b62968a9ffd50d88b981c076f9a5b11b42cd"
        ),
        .binaryTarget(
            name: "MolocoSDK",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.0.0/MolocoSDK.xcframework.zip",
            checksum: "0e0deaec5993d71e13a67328ed4fd8ecc74f9bdb89527dbabc18126c3bdfb80b"
        ),
    ]
)
