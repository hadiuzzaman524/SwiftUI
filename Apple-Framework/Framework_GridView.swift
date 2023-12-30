//
//  Framework_GridView.swift
//  Apple-Framework
//
//  Created by Hadiuzzaman on 30/12/23.
//

import SwiftUI

struct Framework_GridView: View {
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible()),
    ]
    
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: columns){
                    
                    ForEach(MockData.frameworks){ framework in
                        FrameworkTitle(imageName: framework.imageName, name: framework.name)
                
                  
                    }
                }.padding()
            }
       
            .navigationTitle("🍏 Framework")
        }
       
     
    }
}

#Preview {
    Framework_GridView()
}


struct FrameworkTitle: View {
    
    var imageName:String
    var name:String
    
    var body: some View{
        VStack{
            Image(imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
    }
}
