// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "scheduled-lambda-proto",
    platforms: [.macOS(.v10_13)],
    products: [
        .executable(
            name: "scheduled-lambda-proto",
            targets: ["scheduled-lambda-proto"]),
    ],
    dependencies: [
        .package(url: "https://github.com/swift-server/swift-aws-lambda-runtime.git", .upToNextMajor(from: "0.3.0")),
        .package(url: "https://github.com/swift-server/async-http-client.git", from: "1.0.0")
    ],
    targets: [
        .target(
            name: "scheduled-lambda-proto",
            dependencies: [
                .product(name: "AWSLambdaRuntime", package: "swift-aws-lambda-runtime"),
                .product(name: "AWSLambdaEvents", package: "swift-aws-lambda-runtime"),
                .product(name: "AsyncHTTPClient", package: "async-http-client")
            ]),
        .testTarget(
            name: "scheduled-lambda-protoTests",
            dependencies: ["scheduled-lambda-proto"]),
    ]
)
