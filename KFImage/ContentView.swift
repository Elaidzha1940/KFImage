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

struct ContentView: View {
    var body: some View {
        
        ZStack {
          
            KFImage(URL(string: "https://images.unsplash.com/photo-1694952751871-4c60120ec470?auto=format&fit=crop&q=60&w=800&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDIyMnxKcGc2S2lkbC1Ia3x8ZW58MHx8fHx8"))
            Rectangle()
                .frame(width: 300, height: 200)
        }
    }
}

#Preview {
    ContentView()
}
