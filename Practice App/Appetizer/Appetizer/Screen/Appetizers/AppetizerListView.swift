//
//  AppetizerListView.swift
//  Appetizer
//
//  Created by Hadiuzzaman on 31/12/23.
//

import SwiftUI

struct AppetizerListView: View {
    
 @StateObject var viewModel = AppetizerListViewModel()
  
    var body: some View {
        
        ZStack{
            NavigationView{
                List(viewModel
                    .appetizer){ appetizer in
                  AppetizerCard(appetizer: appetizer)
                  
                }
                .navigationTitle("🚀 Appetizers")
            }.onAppear{
                viewModel.getAppetizers();
            }
            .alert(isPresented: $viewModel.hasError ){
                Alert(title: Text("Error"),
                      message: Text(viewModel.errorMessage))
            }
            
            if(viewModel.isLoading){
                ProgressView()
            }
        }
       
       
    }
}

#Preview {
    AppetizerListView()
}
