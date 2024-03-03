//
//  ContentView.swift
//  custom-image
//
//  Created by Hadiuzzaman on 3/3/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            MapView()
                .frame(height: 300)
           ImageView()
                .offset(y:-130)
                .padding(.bottom, -130)
            DetailsView()
            Spacer()
        }
        
    }
}

#Preview {
    ContentView()
}
