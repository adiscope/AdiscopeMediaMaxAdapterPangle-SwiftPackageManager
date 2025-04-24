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
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.1.0"),
        .package(url: "https://github.com/adiscope/Adiscope-iOS-Pangle.git", exact: "4.2.0"),
    ],
    targets: [
        .target(
            name: "AdiscopeMediaMaxAdapterPangleTarget",
            dependencies: [
                .target(name: "AdiscopeMediaMaxAdapterPangle"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
                .product(name: "AdiscopeWithPangle", package: "Adiscope-iOS-Pangle"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterPangle",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.2.0/AdiscopeMediaMaxAdapterPangle.zip",
            checksum: "8c6083983a17fb3e415def55fda533bd29918675779691390657581abd57c152"
        ),
    ]
)
