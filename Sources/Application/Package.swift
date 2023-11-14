// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Application",
    platforms: [.iOS(.v17)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "Application",
            targets: ["Application"]),
    ],
    dependencies: [
        .package(path: "../HomeModule"),
        .package(path: "../ProductsModule"),
        .package(path: "../Routing")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "Application",
            dependencies: [
                .product(name: "HomeModule", package: "HomeModule"),
                .product(name: "ProductsModule", package: "ProductsModule"),
                .product(name: "Routing", package: "Routing")
            ]
        ),
        .testTarget(
            name: "ApplicationTests",
            dependencies: ["Application"]),
    ]
)
