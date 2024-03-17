//
//  FavoriteButton.swift
//  custom-image
//
//  Created by Hadiuzzaman on 17/3/24.
//

import SwiftUI

struct FavoriteButton: View {
    
    @Binding var isSet: Bool
    var body: some View {
        Button{
            isSet.toggle()
        }label: {
            Label("Toggle favorite",systemImage: isSet ? "star.fill" : "star" )
                .labelStyle(.iconOnly)
                               .foregroundStyle(isSet ? .yellow : .gray)
        }
    }
}

#Preview {
    FavoriteButton(isSet: .constant(true))
}
