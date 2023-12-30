//
//  FrameworkDetailsView.swift
//  Apple-Framework
//
//  Created by Hadiuzzaman on 30/12/23.
//

import SwiftUI

struct FrameworkDetailsView: View {
    
    var framework:Framework
    
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Image(systemName: "xmark")
                    .foregroundColor(Color(.label))
                    .imageScale(.large)
                    .frame(width: 40, height: 40)
                    
            }
            FrameworkTitle(framework: framework)
            Text(framework.description).font(.body)
                .fontWeight(.light)
                .padding()
            Spacer()
            Button{
                
            } label: {
                Text("More Details")
                    .font(.title3)
                    .frame(width: 250, height: 40)
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(12)
            }
        }.padding()
    }
}

#Preview {
    FrameworkDetailsView(framework:MockData.sampleFramework)
}
