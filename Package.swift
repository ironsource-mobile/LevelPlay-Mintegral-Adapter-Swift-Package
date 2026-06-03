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
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/mintegral-adapter/5.16.0/ISMintegralAdapter5.16.0.zip",
      checksum: "b92c7c9f3ecab661af304e8dd1b5b1af86d77564b79a10db805fe83c636a4755"
    )
  ]
)
