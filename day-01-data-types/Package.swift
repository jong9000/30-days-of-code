// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "day-01-data-types",
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "day-01-data-types",
            dependencies: []),
        .testTarget(
            name: "day-01-data-typesTests",
            dependencies: ["day-01-data-types"],
            resources: [
              .process("TestsData")]
        ),
    ]
)
