// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "push-notifications-lambda",
    platforms: [.macOS(.v10_13)],
    products: [
        .executable(
            name: "push-notifications-lambda",
            targets: ["push-notifications-lambda"]),
    ],
    dependencies: [
        .package(url: "https://github.com/swift-server/swift-aws-lambda-runtime.git", .upToNextMajor(from: "0.3.0"))
    ],
    targets: [
        .target(
            name: "push-notifications-lambda",
            dependencies: [
                .product(name: "AWSLambdaRuntime", package: "swift-aws-lambda-runtime")
            ]),
        .testTarget(
            name: "push-notifications-lambdaTests",
            dependencies: ["push-notifications-lambda"]),
    ]
)
