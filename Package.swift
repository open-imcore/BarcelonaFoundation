// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BarcelonaFoundation",
    platforms: [
        .macOS(.v10_15), .iOS(.v13)
    ],
    products: [
        .library(
            name: "BarcelonaFoundation",
            targets: ["BarcelonaFoundation"]),
    ],
    dependencies: [
        .package(url: "https://github.com/EricRabil/Pwomise", .upToNextMajor(from: "1.1.3"))
    ],
    targets: [
        .target(
            name: "BarcelonaFoundation",
            dependencies: ["Pwomise"])
    ]
)
