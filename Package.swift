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
            url: "https://github.com/swlfigo/openssl-spm/releases/download/storage.4.1.0/libssl.xcframework.zip",
            checksum: "93d3d74779f68eb469a284bda9a69ce7b69c549720a2413bb1213607e4bac48a"
        ),
    ]
)
