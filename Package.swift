// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "LevelPlay-Mintegral-Adapter-Swift-Package",
  platforms: [.iOS(.v12)],
  products: [
    .library(name: "MintegralAdapter", targets: ["MintegralAdapter"]),
  ],
  dependencies: [
    .package(url: "https://github.com/Mintegral-official/MintegralAdSDK-Swift-Package", exact: "8.0.5"),
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
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/mintegral-adapter/5.6.0/ISMintegralAdapter5.6.0.zip",
      checksum: "524d4ceb74e3f05148076c9d685572112b89bac311fb2c0dad0731e730aba227"
    )
  ]
)
