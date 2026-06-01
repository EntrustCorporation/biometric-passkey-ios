// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "BiometricPasskeySDK",
    platforms: [
        .iOS(.v17)
    ],
    products: [
        .library(
            name: "BiometricPasskeySDK",
            targets: ["BiometricPasskeySDK", "BiometricPasskeySDKPackageSupport"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/EntrustCorporation/IdvSDK-iOS", exact: "100.3.0")
    ],
    targets: [
        .binaryTarget(
            name: "BiometricPasskeySDK",
            url: "https://github.com/EntrustCorporation/biometric-passkey-ios/releases/download/artifacts%2Fv1.0.0/BiometricPasskeySDK-1.0.0.xcframework.zip",
            checksum: "c8ec1a2528f51f6b6cb37d211bfdd66011c6eb1b1b08e11c74b962d1beb588c6"
        ),
        .target(
            name: "BiometricPasskeySDKPackageSupport",
            dependencies: [
                .product(name: "EntrustIdv", package: "IdvSDK-iOS")
            ],
            path: "Sources/BiometricPasskeySDKPackageSupport"
        )
    ]
)
