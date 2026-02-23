// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AdiscopeMediaMaxAdapterPangle",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "AdiscopeMediaMaxAdapterPangle",
            targets: ["AdiscopeMediaMaxAdapterPangleTarget"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.5.1"),
        .package(url: "https://github.com/adiscope/Adiscope-iOS-Pangle.git", exact: "5.2.0"),
    ],
    targets: [
        .target(
            name: "AdiscopeMediaMaxAdapterPangleTarget",
            dependencies: [
                .target(name: "AdiscopeMediaMaxAdapterPangle"),
                .target(name: "AdiscopeMediaMaxAdapterPangleMediationAdapter"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
                .product(name: "AdiscopeWithPangle", package: "Adiscope-iOS-Pangle"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterPangle",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.2.0/AdiscopeMediaMaxAdapterPangle.zip",
            checksum: "b5ac2e439c5ce6e46f5991878e85e07c0bc0c64b29168b9700e2d2ba38c326c4"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterPangleMediationAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.2.0/AppLovinMediationByteDanceAdapter.xcframework.zip",
            checksum: "99baf9b88d16bcaf408612835f7e40724ecabef5e8b1e801117f5641e2001697"
        ),
    ]
)
