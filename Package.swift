// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "LevelPlay-Mintegral-Adapter-Swift-Package",
  platforms: [.iOS(.v12)],
  products: [
    .library(name: "MintegralAdapter", targets: ["MintegralAdapter"]),
  ],
  dependencies: [
    .package(url: "https://github.com/Mintegral-official/MintegralAdSDK-Swift-Package", exact: "8.1.4"),
    .package(url: "https://github.com/ironsource-mobile/Unity-Mediation-iAds-Swift-Package", "9.2.0"..<"10.0.0"),
  ],
  targets: [
    .target(
      name: "MintegralAdapter",
      dependencies: [
        "MintegralAdapterSDK",
        .product(name: "MintegralAdSDK", package: "MintegralAdSDK-Swift-Package"),
        .product(name: "UnityMediationSDK", package: "Unity-Mediation-iAds-Swift-Package"),
      ]
    ),
    .binaryTarget(
      name: "MintegralAdapterSDK",
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/mintegral-adapter/5.14.0/ISMintegralAdapter5.14.0.zip",
      checksum: "650de9d02ac1f7e7e32a30cb7593e45a8deefa9aa7f617059fe9d1c40ae50c18"
    )
  ]
)
