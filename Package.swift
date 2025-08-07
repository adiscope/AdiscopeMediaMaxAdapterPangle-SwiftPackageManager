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
        .package(url: "https://github.com/adiscope/Adiscope-iOS-Pangle.git", exact: "4.2.1"),
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
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.3.0/AdiscopeMediaMaxAdapterPangle.zip",
            checksum: "f69b9886fbcd9d02680fe6182c7f26a0e1bf0d4ae258c6d92d41a1a275ec7fe9"
        ),
    ]
)
