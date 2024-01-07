//
//  AppetizerCard.swift
//  Appetizer
//
//  Created by Hadiuzzaman on 31/12/23.
//

import SwiftUI

struct AppetizerCard: View {
    var appetizer: Appetizer
    
    var body: some View {
        
        HStack(alignment: .top){
          
    
            AsyncImage(url: URL(string: appetizer.imageURL)){image in
                image.resizable()
                    .frame(width: 100, height: 80)
                    .cornerRadius(12)
                
               
                
            } placeholder: {
                ProgressView().frame(width: 100, height: 80)
            }
               
            VStack(alignment:.leading){
                
                Text(appetizer.name)
                    .font(.system(size: 20))
                    .lineLimit(2, reservesSpace: false)
                    .padding(.top)
                 
                Text("$ \(appetizer.price.significandWidth)")
                    .fontWeight(.thin)
                    .foregroundStyle(Color(.red))
              Spacer()
                
           }
          
        }
    }
}

#Preview {
    AppetizerCard(appetizer: MockData.sampleAppetizer)
}
