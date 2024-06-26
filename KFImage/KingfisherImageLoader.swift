//  /*
//
//  Project: KFImage
//  File: ContentView.swift
//  Created by: Elaidzha Shchukin
//  Date: 20.10.2023
//
//  */

import SwiftUI
import Kingfisher

struct KingfisherImageLoader: View {
    //@State private var progress: Int32 = 0
    
    let url: String
    var contentMode: SwiftUI.ContentMode = .fill
    
    var body: some View {
        
        VStack {
            KFImage(URL(string: url))
                .placeholder {
                    Color.blue
                }
                .onProgress ({ receivedSize, totalSize in
                    //
                })
                .onSuccess ({ result in
                    //
                })
                .onFailure { error in
                    //
                }
                //.resizable()
                //.cacheMemoryOnly()
                //.lowDataModeSource(.network(lowResolutionURL))
                .aspectRatio(contentMode: contentMode)
        }
        
        //        ZStack {
        //            KFImage(URL(string: "https://images.unsplash.com/photo-1694952751871-4c60120ec470?auto=format&fit=crop&q=60&w=800&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDIyMnxKcGc2S2lkbC1Ia3x8ZW58MHx8fHx8"))
        //                .loadDiskFileSynchronously()
        //                .cacheMemoryOnly()
        //                .fade(duration: 4.5)
        //                .onProgress { receivedSize, totalSize in
        //                    progress = Int32(receivedSize)
        //                }
        //
        //            Rectangle()
        //                .foregroundColor(.white)
        //                .frame(width: 300, height: 70)
        //                .cornerRadius(20)
        //                .opacity(0.3)
        //            HStack{
        //                Text("Welcome to elid.ev")
        //                    .font(.system(size: 20, weight: .bold, design: .serif))
        //                    .foregroundStyle(.white)
        //
        //                Text("\(progress)")
        //                    .font(.system(size: 20, weight: .bold, design: .serif))
        //                    .foregroundStyle(.white)
        //            }
        //        }
    }
}

#Preview {
    KingfisherImageLoader(url: "https://picsum.photos/id/737/200/300")
}

