//
//  AppetizerListView.swift
//  Appetizer
//
//  Created by Hadiuzzaman on 31/12/23.
//

import SwiftUI

struct AppetizerListView: View {
    
 @StateObject var viewModel = AppetizerListViewModel()
    @State private var isShowDetails: Bool = false
    
    @State var appetizer : Appetizer?
  
    var body: some View {
        
        ZStack{
            NavigationView{
                List(viewModel
                    .appetizer){ appetizer in
                  AppetizerCard(appetizer: appetizer)
                            .onTapGesture {
                              isShowDetails = true
                                self.appetizer = appetizer
                            }
                  
                    }.disabled(isShowDetails ? true : false)
                .navigationTitle("🚀 Appetizers")
           
                   }
            
            }.onAppear{
                viewModel.getAppetizers();
            }
            .alert(isPresented: $viewModel.hasError ){
                Alert(title: Text("Error"),
                      message: Text(viewModel.errorMessage))
            }
         
            .blur(radius: isShowDetails ? 20:0)
            if(viewModel.isLoading){
                ProgressView()
            }
            if(isShowDetails){
                AppetizerDetailsView(appetizer: appetizer!, isShowDetails: $isShowDetails)
            }
        }
}

#Preview {
    AppetizerListView(appetizer: MockData.sampleAppetizer)
}
