// swift-tools-version: 6.2
import PackageDescription

let package = Package(
    name: "FlippyDiscSupport",
    products: [
        .library(
            name: "FlippyDiscSupport",
            targets: ["FlippyDiscSupport"],
        ),
    ],
    targets: [
        .target(
            name: "FlippyDiscSupport"
        )
    ]
)
