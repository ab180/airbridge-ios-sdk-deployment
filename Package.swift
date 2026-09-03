// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "airbridge-ios-sdk",
    platforms: [
        .iOS(.v12),
    ],
    products: [
        .library(
            name: "Airbridge",
            targets: ["_Airbridge"]
        ),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "_Airbridge",
            dependencies: ["Airbridge"],
            path: "Source",
            linkerSettings: [
                .linkedFramework("AdSupport"),
                .linkedFramework("AppTrackingTransparency"),
                .linkedFramework("AdServices"),
                .linkedFramework("CoreTelephony"),
                .linkedFramework("StoreKit"),
                .linkedFramework("WebKit"),
            ]
        ),
        .binaryTarget(
        name: "Airbridge",
        url: "https://sdk-download.airbridge.io/airbridge-ios-sdk/4.11.1/Airbridge.zip",
        checksum: "d61dcd280a2e36990ae8d4eef207dab43a9fdbe339dd056dff02c7d295669e86"
    ),
    ]
)
