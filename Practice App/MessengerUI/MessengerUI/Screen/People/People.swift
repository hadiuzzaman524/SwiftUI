//
//  People.swift
//  MessengerUI
//
//  Created by Hadiuzzaman on 23/1/24.
//

import SwiftUI

struct People: View {
    
    @StateObject var viewModel = PersonViewModel()
    
    var body: some View {
        NavigationView{
            ScrollView{
                VStack{
                    ForEach(viewModel.personList, id:\.self){
                        person in
                        HStack(spacing:12){
                            Image("hadi")
                                .resizable()
                                .frame(width: 80, height: 80)
                                .clipShape(Circle())
                            VStack(alignment: HorizontalAlignment.leading){
                                Text(person)
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    
                                Text("Joined: 01/12/2023")
                            }
                           
                       Spacer()
                        }
                    }.padding(.horizontal)
                }
               
            }
            .navigationTitle("Contacts")
        }
        
    }
}

#Preview {
    People()
}
