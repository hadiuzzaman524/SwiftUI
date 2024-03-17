//
//  DetailsView.swift
//  custom-image
//
//  Created by Hadiuzzaman on 3/3/24.
//

import SwiftUI

struct DetailsView: View {
   
    var landmark: Landmark
    
    @Environment(ModelData.self) var modelData
    
    var landmarkIndex: Int {
            modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
        }
    
    var body: some View {
        
        @Bindable var modelData = modelData

        VStack(alignment:.leading){
            HStack{
                VStack(alignment:.leading){
                    
                    HStack{
                        Text(landmark.name)
                            .font(.title)
                            .foregroundColor(.red)
                        FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                    }
                
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
    let landmarks = ModelData().landmarks
    
    return DetailsView(landmark: landmarks[0])
}
