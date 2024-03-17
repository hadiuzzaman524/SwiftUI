//
//  custom_imageApp.swift
//  custom-image
//
//  Created by Hadiuzzaman on 3/3/24.
//

import SwiftUI

@main
struct custom_imageApp: App {
    
    @State private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            LandmarkList().environment(modelData)
        }
    }
}
