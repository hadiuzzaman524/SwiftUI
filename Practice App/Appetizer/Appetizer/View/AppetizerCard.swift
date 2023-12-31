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
          
            Image("asian-flank-steak").resizable()
                .frame(width: 100, height: 80)
                .cornerRadius(12)
               
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
