// swift-tools-version:5.2
import PackageDescription

let package = Package(
    name: "CSV.swift.NIO",
    products: [
        .library(name: "CSV-NIO", targets: ["CSV-NIO"])
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-nio.git", from: "2.19.0"),
    ],
    targets: [
        .target(name: "CSV-NIO",
            dependencies: [
                .product(name: "NIO", package: "swift-nio")
            ]
        ),
        .testTarget(name: "CSV-NIOTests",
            dependencies: [
                .target(name: "CSV-NIO")
            ]
        ),
    ]
)
