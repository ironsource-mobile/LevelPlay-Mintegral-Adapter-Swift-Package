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
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/mintegral-adapter/5.8.0/ISMintegralAdapter5.8.0.zip",
      checksum: "5cd730caffc2b54498984e6c1dc318717c24e4258860c2525f3717b448d5af4a"
    )
  ]
)
