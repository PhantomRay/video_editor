// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.
//
//  Generated file. Do not edit.
//

import PackageDescription

let package = Package(
    name: "FlutterGeneratedPluginSwiftPackage",
    platforms: [
        .iOS("13.0")
    ],
    products: [
        .library(name: "FlutterGeneratedPluginSwiftPackage", type: .static, targets: ["FlutterGeneratedPluginSwiftPackage"])
    ],
    dependencies: [
        .package(name: "video_player_avfoundation", path: "../.packages/video_player_avfoundation"),
        .package(name: "image_picker_ios", path: "../.packages/image_picker_ios")
    ],
    targets: [
        .target(
            name: "FlutterGeneratedPluginSwiftPackage",
            dependencies: [
                .product(name: "video-player-avfoundation", package: "video_player_avfoundation"),
                .product(name: "image-picker-ios", package: "image_picker_ios")
            ]
        )
    ]
)
