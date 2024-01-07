//
//  AppetizerDetailsView.swift
//  Appetizer
//
//  Created by Hadiuzzaman on 7/1/24.
//

import SwiftUI

struct AppetizerDetailsView: View {
    var appetizer : Appetizer
    @Binding var isShowDetails : Bool
    
    var body: some View {
        VStack{
            AsyncImage(url: URL(string: appetizer.imageURL)){image in
                image.resizable()
                    .frame(width: 300, height: 200)
                    .cornerRadius(12)
                
               
                
            } placeholder: {
                ProgressView().frame(width: 300, height: 200)
            }
            Text(appetizer.name).font(.system(size: 22)).fontWeight(.semibold)
            Text(appetizer.description).padding();
            HStack{
                VStack{
                    Text("Basic")
                    Text("$ 66")
                }.padding()
                VStack{
                    Text("Basic")
                    Text("$ 66")
                }.padding()
                
                VStack{
                    Text("Basic")
                    Text("$ 66")
                }.padding()
                
            }
            
            Button{
                print("Tap")
            } label: {
                Text("Add to Card")
                    .frame(width: 200, height: 50)
                    .cornerRadius(20)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(.blue, lineWidth: 1)
                    )
            }
            
            Spacer()
        }.frame(width: 300, height: 500).background(Color(.systemBackground))
            .cornerRadius(12)
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            .overlay(Button{
                isShowDetails = false
            } label: {
                ZStack{
                    Circle().frame(width: 40)
                        .foregroundColor(.white)
                        .opacity(0.6)
                    
                    Image(systemName: "xmark")
                        .resizable()
                        .frame(width: 25,height: 25)
                }
              
            }, alignment: Alignment.topTrailing)
        
        
      
            
    }
}

#Preview {
    AppetizerDetailsView(appetizer: MockData.sampleAppetizer, isShowDetails: .constant(true))
}
