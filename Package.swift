// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BarcelonaFoundation",
    platforms: [
        .macOS(.v10_14), .iOS(.v13)
    ],
    products: [
        .library(
            name: "BarcelonaFoundation",
            targets: ["BarcelonaFoundation"]),
    ],
    dependencies: [
        .package(url: "https://github.com/EricRabil/Pwomise", .upToNextMajor(from: "1.0.3")),
        .package(url: "https://github.com/EricRabil/Swexy", .upToNextMajor(from: "1.0.1")),
        .package(url: "https://github.com/EricRabil/Swog", .upToNextMajor(from: "1.0.0"))
    ],
    targets: [
        .target(
            name: "BarcelonaFoundation",
            dependencies: ["Pwomise", "Swexy", "Swog"])
    ]
)
