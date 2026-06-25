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
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.6.2"),
        .package(url: "https://github.com/adiscope/Adiscope-iOS-Pangle.git", exact: "5.4.0"),
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
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.4.0/AdiscopeMediaMaxAdapterPangle.zip",
            checksum: "53f93431c647b471138b1b05026879343030d65fa45379fe33586d3de4aecc67"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterPangleMediationAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.4.0/AppLovinMediationByteDanceAdapter.xcframework.zip",
            checksum: "59114a2f5bccc315ec814dca46491484eb7a212507b58fae5f297b709b6ecce6"
        ),
    ]
)
