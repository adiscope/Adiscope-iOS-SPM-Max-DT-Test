// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AdiscopeMediaMaxAdapterDT",
    products: [
        .library(
            name: "AdiscopeMediaMaxAdapterDT",
            targets: ["AdiscopeMediaMaxDTTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.3.1"),
    ],
    targets: [
        .target(
            name: "AdiscopeMediaMaxDTTarget",
            dependencies: [
              .target(name: "AdiscopeMediaMaxAdapterDT"),
              .target(name: "IASDKCore"),
              .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
          name: "AdiscopeMediaMaxAdapterDT",
          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.5/AdiscopeMediaMaxAdapterDTExchange.zip",
          checksum: "d8083f9bd1ed6b07e55b02d39cce23c5c57a9f995a8625b7b034a1a7dbd2b7d2"
        ),
        .binaryTarget(
          name: "IASDKCore",
          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.5/IASDKCore.xcframework.zip",
          checksum: "965104672eca9b2d0f22b3fabadcd5434e56849d5c366021b4c65741031acea5"
        ),
    ]
)
