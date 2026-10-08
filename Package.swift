// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "OpenSSL",
    products: [
        .library(name: "OpenSSL", targets: ["OpenSSL"]),
    ],
    targets: [
        .target(name: "OpenSSL", dependencies: [
            "ssl",
        ]),
        .binaryTarget(
            name: "ssl",
            url: "https://github.com/swlfigo/openssl-spm/releases/download/storage.4.0.3/libssl.xcframework.zip",
            checksum: "9e210c5323f47713859e082d0b8c6bc7853d1c35783694774fdff300d627d6b4"
        ),
    ]
)
