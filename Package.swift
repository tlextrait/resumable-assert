// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ResumableAssert",
    platforms: [
        .iOS(.v14), .macOS(.v11)
    ],
    products: [
        .library(
            name: "ResumableAssert",
            targets: ["ResumableAssert"]
        ),
    ],
    targets: [
        .target(
            name: "ResumableAssert",
            path: "Sources/ResumableAssert",
            publicHeadersPath: "include",
            swiftSettings: [
                .unsafeFlags([
                    "-Werror",
                    "-Wextra",
                    "-Wall",
                    "-Wstrict-prototypes",
                    "-Wdocumentation",
                ]),
            ],
        ),
    ]
)
