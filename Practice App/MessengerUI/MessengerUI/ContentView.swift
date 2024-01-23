//
//  ContentView.swift
//  MessengerUI
//
//  Created by Hadiuzzaman on 22/1/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            Chat()
                .tabItem {
                    Label("Chat", systemImage: "message.badge.waveform")
                }
            People()
                .tabItem {
                    Label("People",
                    systemImage: "person.2.fill")
                }
            
            Stories()
                .tabItem {
                    Label("Stories",
                    systemImage: "photo.stack")
                }
        }
        
    }
}

#Preview {
    ContentView()
}
