// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.14.1-4-g0bf2ba10e"

let package = Package(
    name: "BNBEyes",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "BNBEyes",
            targets: [
                "BNBEyes",
                "BNBEyes_BNBSdkCore",
                "BNBEyes_BNBEffectPlayer",
                "BNBEyes_BNBScripting",
                "BNBEyes_BNBFaceTracker"
            ]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/sdk-banuba/BNBSdkCore.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/BNBEffectPlayer.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/BNBScripting.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/BNBFaceTracker.git",
            .exact(bnbPackageVersion)
        ),
    ],
    targets: [
        .binaryTarget(
            name: "BNBEyes",
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.14.1-4-g0bf2ba10e/BNBEyes.zip",
            checksum: "f91bdd369e5b94b99a4119a175bd88b908582c89419667d5ae8b16bc58536c3f"
        ),
        .target(
            name: "BNBEyes_BNBSdkCore",
            dependencies: [
                .product(
                    name: "BNBSdkCore",
                    package: "BNBSdkCore"
                ),
            ]
        ),
        .target(
            name: "BNBEyes_BNBEffectPlayer",
            dependencies: [
                .product(
                    name: "BNBEffectPlayer",
                    package: "BNBEffectPlayer"
                ),
            ]
        ),
        .target(
            name: "BNBEyes_BNBScripting",
            dependencies: [
                .product(
                    name: "BNBScripting",
                    package: "BNBScripting"
                ),
            ]
        ),
        .target(
            name: "BNBEyes_BNBFaceTracker",
            dependencies: [
                .product(
                    name: "BNBFaceTracker",
                    package: "BNBFaceTracker"
                ),
            ]
        ),
    ]
)
