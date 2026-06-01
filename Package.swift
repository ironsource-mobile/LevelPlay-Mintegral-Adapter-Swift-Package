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
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/mintegral-adapter/5.15.0/ISMintegralAdapter5.15.0.zip",
      checksum: "9c17ef29b09e3380673f18b46bd62e8070334bd9d7433e9fd5a14f1bc6c4bd6c"
    )
  ]
)
