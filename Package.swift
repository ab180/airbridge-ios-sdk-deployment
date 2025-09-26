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
            url: "https://sdk-download.airbridge.io/airbridge-ios-sdk/4.8.1/Airbridge.zip",
            checksum: "3fcdf4dba1e64fb902091129361e179391f9930cf61f3638f6e7e916b52f72ef"
        ),
    ]
)
