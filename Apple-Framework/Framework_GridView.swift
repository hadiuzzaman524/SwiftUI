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
        LazyVGrid(columns: columns){
            FrameworkTitle(imageName: "app-clip", name: "App Clips")
            FrameworkTitle(imageName: "app-clip", name: "App Clips")
            FrameworkTitle(imageName: "app-clip", name: "App Clips")
            FrameworkTitle(imageName: "app-clip", name: "App Clips")
            FrameworkTitle(imageName: "app-clip", name: "App Clips")
            FrameworkTitle(imageName: "app-clip", name: "App Clips")
        
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
