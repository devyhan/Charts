import PackageDescription

let package = Package(
    name: "DGCharts",
    platforms: [
          .iOS(.v12),
          .tvOS(.v12),
          .macOS(.v10_12),
    ],
    products: [
        .library(
            name: "DGCharts",
            targets: ["DGCharts"]),
        .library(
            name: "DGChartsDynamic",
            type: .static,
            targets: ["DGCharts"])
    ],
    targets: [
        .target(
            name: "DGCharts",
            path: "Source/Charts",
            resources: [.copy("PrivacyInfo.xcprivacy")]
        )
    ],
    swiftLanguageVersions: [.v5]
)
