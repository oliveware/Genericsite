// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Genericsite",
    platforms: [.iOS(.v13),.macOS(.v14)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "Genericsite",
            targets: ["Genericsite"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "http://github.com/oliveware/Oware", branch: "main"),
        .package(url: "http://github.com/oliveware/Fichiers", branch: "main")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "Genericsite",
            dependencies: ["Oware","Fichiers"]
        ),
        .testTarget(
            name: "GenericsiteTests",
            dependencies: ["Genericsite"]),
    ]
)
