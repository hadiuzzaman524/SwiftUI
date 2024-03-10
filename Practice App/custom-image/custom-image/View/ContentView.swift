//
//  ContentView.swift
//  custom-image
//
//  Created by Hadiuzzaman on 3/3/24.
//

import SwiftUI
import MapKit

struct ContentView: View {
    
    var landmark: Landmark
    
    var body: some View {
        ScrollView{
            VStack{
                MapView(cordinate: landmark.locationCoordinate)
                    .frame(height: 250)
                ImageView(image: landmark.image)
                    .offset(y:-130)
                    .padding(.bottom, -130)
                DetailsView(landmark: landmark)
                Spacer()
            }
          
        }
        .navigationTitle(landmark.name)
               .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    ContentView(landmark: landmarks[0])
}
