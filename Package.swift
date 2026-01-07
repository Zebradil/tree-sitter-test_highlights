// swift-tools-version:5.3

import Foundation
import PackageDescription

var sources = ["src/parser.c"]
if FileManager.default.fileExists(atPath: "src/scanner.c") {
    sources.append("src/scanner.c")
}

let package = Package(
    name: "TreeSitterTestHighlights",
    products: [
        .library(name: "TreeSitterTestHighlights", targets: ["TreeSitterTestHighlights"]),
    ],
    dependencies: [
        .package(name: "SwiftTreeSitter", url: "https://github.com/tree-sitter/swift-tree-sitter", from: "0.9.0"),
    ],
    targets: [
        .target(
            name: "TreeSitterTestHighlights",
            dependencies: [],
            path: ".",
            sources: sources,
            resources: [
                .copy("queries")
            ],
            publicHeadersPath: "bindings/swift",
            cSettings: [.headerSearchPath("src")]
        ),
        .testTarget(
            name: "TreeSitterTestHighlightsTests",
            dependencies: [
                "SwiftTreeSitter",
                "TreeSitterTestHighlights",
            ],
            path: "bindings/swift/TreeSitterTestHighlightsTests"
        )
    ],
    cLanguageStandard: .c11
)
