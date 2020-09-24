// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "DeploySwiftWebsite",
    products: [
        .executable(
            name: "DeploySwiftWebsite",
            targets: ["DeploySwiftWebsite"]
        )
    ],
    dependencies: [
        .package(name: "Publish", url: "https://github.com/johnsundell/publish.git", from: "0.6.0")
    ],
    targets: [
        .target(
            name: "DeploySwiftWebsite",
            dependencies: ["Publish"]
        )
    ]
)
