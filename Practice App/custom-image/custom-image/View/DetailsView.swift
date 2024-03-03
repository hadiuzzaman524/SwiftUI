//
//  DetailsView.swift
//  custom-image
//
//  Created by Hadiuzzaman on 3/3/24.
//

import SwiftUI

struct DetailsView: View {
    var body: some View {
        
        HStack{
            VStack(alignment:.leading){
                Text("Md Hadiuzzaman")
                    .font(.title)
                    .foregroundColor(.red)
                Text("05/03/1998")
            }
            Spacer()
            Text("Dhaka,BD")
   
        }.padding()
    }
}

#Preview {
    DetailsView()
}
