//
//  AppetizerTabView.swift
//  Appetizer
//
//  Created by Hadiuzzaman on 31/12/23.
//

import SwiftUI

struct AppetizerTabView: View {
    var body: some View {
        TabView{
            AppetizerListView().tabItem {
                Image(systemName: "house")
                Text("Home")
            }
            AccountView().tabItem {
                Image(systemName: "person")
                Text("Profile")
            }
            OrderView().tabItem {
                Image(systemName: "bag")
                Text("Order")
            }
        }.accentColor(Color("primaryColor"))
    }
}

#Preview {
    AppetizerTabView()
}
