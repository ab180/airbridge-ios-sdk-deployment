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
            url: "https://sdk-download.airbridge.io/airbridge-ios-sdk/4.9.3/Airbridge.zip",
            checksum: "b7b0d80a4ec962496acf132f2f50f06ea50dc1c28f2f9eecc8f62504b70cd6c8"
        ),
    ]
)
