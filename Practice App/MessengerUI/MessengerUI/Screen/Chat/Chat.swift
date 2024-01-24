//
//  Chat.swift
//  MessengerUI
//
//  Created by Hadiuzzaman on 23/1/24.
//

import SwiftUI

struct Chat: View {
    
    @StateObject var viewModel = PersonViewModel()
    
    @State private var searchText: String = ""
    
  
    var body: some View {
        NavigationView{
            ScrollView{
                VStack{
                    ScrollView(.horizontal, showsIndicators: false){
                        
                        HStack{
                            ForEach(viewModel.personList, id: \.self){
                                person in
                                VStack{
                                    Image("hadi")
                                        .resizable()
                                        .frame(width: 80, height: 80)
                                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                    Text(person)
                                }
                            }
                        }
                        
                    }
                    
                    ForEach(viewModel.personList, id: \.self){
                        person in
                        
                        HStack(spacing:8){
                            Image("hadi")
                                .resizable()
                                .frame(width: 80, height: 80)
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            
                            VStack(alignment:HorizontalAlignment.leading){
                                Text(person)
                                    .font(.title2)
                                    .fontWeight(.bold)
                                Text("Joined: 01/12/2023")
                                
                            }
                            Spacer()
                            
                        }.padding(.horizontal)
                    }
                        
                }
                   
            }
            
            
         .navigationTitle("🥱 Chat")
        }.searchable(text:$searchText)
        
    }
}

#Preview {
    Chat()
}
