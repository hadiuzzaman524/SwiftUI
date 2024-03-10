//
//  LandmarkList.swift
//  custom-image
//
//  Created by Hadiuzzaman on 4/3/24.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        
        NavigationSplitView{
            List(landmarks, id: \.id){
                landmark in
                
                NavigationLink{
                   ContentView(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
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
