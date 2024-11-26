// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.14.1-188-g3e9bf00b67"

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
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.14.1-188-g3e9bf00b67/BNBEyes.zip",
            checksum: "49e268df5ed22f1c56745ad27b3726a617916f10079123e973181117d3849246"
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
