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
            checksum: "b51add9531adbb669ee52528038782e8edcbb5b7166a4d7256261bd11107498f"
        ),
    ]
)
