//
//  DetailsView.swift
//  custom-image
//
//  Created by Hadiuzzaman on 3/3/24.
//

import SwiftUI

struct DetailsView: View {
    var landmark: Landmark
    
    var body: some View {
        
        VStack(alignment:.leading){
            HStack{
                VStack(alignment:.leading){
                    Text(landmark.name)
                        .font(.title)
                        .foregroundColor(.red)
                    Text(landmark.park)
                }
          
                Spacer()
                Text(landmark.state )
                
       
            }
            Divider()
            Text("About $\(landmark.name)")
                .font(.title2)
                .foregroundStyle(.gray)
            
            Text(landmark.description)
            
        
            Spacer()
        }.padding()
     
    }
}

#Preview {
    DetailsView(landmark: landmarks[0])
}
