//
//  Chat.swift
//  MessengerUI
//
//  Created by Hadiuzzaman on 22/1/24.
//

import SwiftUI

struct Chat: View {
    @State var search : String = ""
    var body: some View {
        NavigationView{
            VStack{
                
                HStack{
                  Image("hadi")
                        .resizable()
                        .frame(width:100, height: 100)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    
                   Circle()
                   Circle()
                   Circle()
                }
                Spacer()
            }.padding(.horizontal)
           
                .navigationTitle("🥱 Chat")
        }.searchable(text: $search)
    }
}

#Preview {
    Chat()
}
