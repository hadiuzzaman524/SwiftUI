//
//  FrameworkDetailsView.swift
//  Apple-Framework
//
//  Created by Hadiuzzaman on 30/12/23.
//

import SwiftUI

struct FrameworkDetailsView: View {
    
    @State var isShowSafariView: Bool = false
    var framework:Framework
    @Binding var showDetailsView: Bool
    
    
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Button{
                    showDetailsView = false
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 40, height: 40)
                }
             
                    
            }
            FrameworkTitle(framework: framework)
            Text(framework.description).font(.body)
                .fontWeight(.light)
                .padding()
            Spacer()
            Button{
                isShowSafariView = true
            } label: {
                Text("More Details")
                    .font(.title3)
                    .frame(width: 250, height: 40)
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(12)
            }
        }.padding().fullScreenCover(isPresented: $isShowSafariView, content: {
           
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "https://apple.com")!)
        })
    }
}

#Preview {
    FrameworkDetailsView(framework:MockData.sampleFramework, showDetailsView: .constant(false))
}
