//
//  MapView.swift
//  custom-image
//
//  Created by Hadiuzzaman on 3/3/24.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    var cordinate : CLLocationCoordinate2D
    
    private var region: MKCoordinateRegion {
            MKCoordinateRegion(
                center: cordinate,
                span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
            )
        }
    
    var body: some View {
        Map(initialPosition: .region(region))
    }
}

#Preview {
    MapView(cordinate:CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
}
