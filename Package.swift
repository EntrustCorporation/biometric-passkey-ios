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
            url: "https://github.com/EntrustCorporation/biometric-passkey-ios/releases/download/artifacts%2Fv1.0.1/BiometricPasskeySDK-1.0.1.xcframework.zip",
            checksum: "54519dbc8285468c435113f181bc73f2beae45c56ce518b458025f7ca803611f"
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
