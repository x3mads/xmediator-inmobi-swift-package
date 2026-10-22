// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "XMediatorInMobi",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "XMediatorInMobi", targets: ["XMediatorInMobiTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/InMobi/InMobiSDK-Swift-Package.git", exact: "11.5.0"),
        .package(url: "https://github.com/x3mads/xmediator-swift-package.git", .upToNextMajor(from: "1.47.0")),
    ],
    targets: [
        .target(
            name: "XMediatorInMobiTarget",
            dependencies: [
                .target(name: "XMediatorInMobi"),
                .product(name: "XMediator", package: "xmediator-swift-package"),
                .product(name: "InMobiSDK", package: "InMobiSDK-Swift-Package"),
            ],
            path: "XMediatorInMobiTarget",
            linkerSettings: []
        ),
        .binaryTarget(
            name: "XMediatorInMobi",
            url: "https://ios-artifact-registry.x3mads.com/cocoapods/XMediatorInMobi/XMediatorInMobi-11.5.0.0.zip",
            checksum: "4d8b30f8d5912ae1c6d79438cd85995b1c07b601b2e823f7616ae3b4dc39417a"
        ),
    ]
)
