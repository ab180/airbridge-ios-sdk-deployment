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
            url: "https://sdk-download.airbridge.io/airbridge-ios-sdk/4.6.0/Airbridge.zip",
            checksum: "a2d354fae5ee8f3fb53be4417128afa780ef663b8924ecae261cb618b62dcc9e"
        ),
    ]
)
