// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Math",
    products: [.library(name: "Math", targets: ["Math"])],
    dependencies: [
        .package(url: "../Structure", .branch("flat")),
    ],
    targets: [
        .target(name: "Math", dependencies: ["Structure"]),
        .testTarget(name: "MathTests", dependencies: ["Math"])
    ]
)
