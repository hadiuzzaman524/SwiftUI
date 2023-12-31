//
//  AppetizerListView.swift
//  Appetizer
//
//  Created by Hadiuzzaman on 31/12/23.
//

import SwiftUI

struct AppetizerListView: View {
    var body: some View {
        NavigationView{
            List(MockData.appetizers){ appetizer in
              AppetizerCard(appetizer: appetizer)
              
            }
            .navigationTitle("🚀 Appetizers")
        }
       
    }
}

#Preview {
    AppetizerListView()
}
