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
        url: "https://sdk-download.airbridge.io/airbridge-ios-sdk/4.10.1/Airbridge.zip",
        checksum: "89aae1d6795f9d61b782ac4d638e237c3e4021cc08cfc9a445f5211781ea0fdc"
    ),
    ]
)
