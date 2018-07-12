// swift-tools-version:4.1

import PackageDescription

let package = Package(
    name: "Math",
    products: [
        .library(name: "Math", targets: ["Math"])
    ],
    dependencies: [
        .package(url: "https://github.com/dn-m/Structure", from: "0.3.0"),
    ],
    targets: [
        .target(name: "Math", dependencies: ["Algebra", "DataStructures"]),
        .testTarget(name: "MathTests", dependencies: ["Math", "DataStructures"])
    ]
)
