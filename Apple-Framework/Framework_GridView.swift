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
                        FrameworkTitle(framework: framework)
            
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
    
    var framework: Framework
    
    var body: some View{
        VStack{
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
    }
}
