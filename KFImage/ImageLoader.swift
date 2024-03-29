//  /*
//
//  Peoject: KFImage
//  File: ImageLoader.swift
//  Created by: Elaidzha Shchukin
//  Date: 29.03.2024
//
//  */

import SwiftUI

struct ImageLoader: View {
    let url: String
    var contentMode: ContentMode = .fill
    
    var body: some View {
        VStack {
            Rectangle()
                .opacity(0)
                .overlay {
                    KingfisherImageLoader(url: url, contentMode: contentMode)
                    // You may use here another SDK
                }
                .clipped()
        }
    }
}

#Preview {
    ImageLoader(
        url: "https://picsum.photos/id/737/200/300",
        contentMode: .fill)
}
