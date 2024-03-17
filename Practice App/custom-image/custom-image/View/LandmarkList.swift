//
//  LandmarkList.swift
//  custom-image
//
//  Created by Hadiuzzaman on 4/3/24.
//

import SwiftUI

struct LandmarkList: View {
    
    @Environment(ModelData.self) var modelData
    @State private var onlyShowFavorited: Bool = false
    
    private var filteredLandmarks: [Landmark]  {
        modelData.landmarks.filter { landmark in
                   (!onlyShowFavorited || landmark.isFavorite)
               }
    }
    
    var body: some View {
        
        NavigationSplitView{
            
            List{
                Toggle(isOn: $onlyShowFavorited) {
                                 Text("Favorites only")
                             }
                ForEach(filteredLandmarks, id: \.id){
                    landmark in
                    
                    NavigationLink{
                       ContentView(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                   
                }
            }
          
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a landmark")
        }
       
    }
}

#Preview {
    LandmarkList()
}
