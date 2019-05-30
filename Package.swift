// swift-tools-version:4.2

import PackageDescription

let package = Package(
    name: "Math",
    products: [
        .library(name: "Math", targets: ["Math"])
    ],
    dependencies: [
        .package(url: "https://github.com/dn-m/Structure", .branch("swift-5")),
    ],
    targets: [
        .target(name: "Math", dependencies: ["Algebra", "DataStructures"]),
        .testTarget(name: "MathTests", dependencies: ["Math", "DataStructures"])
    ]
)
