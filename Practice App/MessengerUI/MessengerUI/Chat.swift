//
//  Chat.swift
//  MessengerUI
//
//  Created by Hadiuzzaman on 22/1/24.
//

import SwiftUI

struct Chat: View {
    
    private var nameList  = ["Hadi", "Tamanna", "Habib", "Rakib", "Rohan"]
    
    @State var search : String = ""
    var body: some View {
        NavigationView{
            ScrollView{
                VStack(spacing:8){
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack{
                            ForEach(nameList, id: \.self){
                                name in
                                VStack{
                                    Image("hadi")
                                        .resizable()
                                        .frame(width:80, height: 80)
                                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                        .shadow(radius:2)
                                    Text(name)
                                }
                                
                            }
                            
                            
                        }
                    }
                    
                  
                    ForEach(nameList, id: \.self){ name in
                        HStack(spacing:12){
                            Image("hadi")
                                .resizable()
                                .frame(width: 70, height: 70)
                                .clipShape(Circle())
                           
                            VStack(alignment: HorizontalAlignment.leading){
                                Text(name)
                                    .font(.title2)
                                    .fontWeight(.bold)
                                Text("Joined: 12/04/2023")
                            }
                            
                                
                            Spacer()
                            
                        }.padding(.horizontal)
                    }
                    
                }
            }
           
                .navigationTitle("🥱 Chat")
        }.searchable(text: $search)
    }
}

#Preview {
    Chat()
}
