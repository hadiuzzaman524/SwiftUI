//
//  ImageView.swift
//  custom-image
//
//  Created by Hadiuzzaman on 3/3/24.
//

import SwiftUI

struct ImageView: View {
    var image: Image
    
    var body: some View {
        image
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay(){
                Circle().stroke(.gray, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

#Preview {
    ImageView(image: Image("myImage"))
}
