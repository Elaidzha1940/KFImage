//  /*
//
//  Project: KFImage
//  File: ImagePrefetcher.swift
//  Created by: Elaidzha Shchukin
//  Date: 29.03.2024
//
//  */

import SwiftUI
import Kingfisher

final class ImagePrefetcher {
    
    static let instansce = ImagePrefetcher()
    var prefetchers: [[URL]: Kingfisher.ImagePrefetcher] = [:]
    
    private init() {}
    
    func startPrefetcher(urls: [URL]) {
        prefetchers[urls] = Kingfisher.ImagePrefetcher(urls: urls)
        prefetchers[urls]?.start()
    }
    
    func stopPrefetcher(urls: [URL]) {
        prefetchers[urls]?.stop()
    }
}

