//
//  AppetizerListView.swift
//  Appetizer
//
//  Created by Hadiuzzaman on 31/12/23.
//

import SwiftUI

struct AppetizerListView: View {
    
    @State var appetizer : [Appetizer] = []
    
    func getAppetizers(){
        
        NetworkManager.shared.getAppetizers(completed:{result in
          
            DispatchQueue.main.async{
                switch(result){
                case .success(let appetizer):
                    self.appetizer = appetizer
                    
                case .failure(let error):
                  print(error)
                }
            }
            
        })
    }
    var body: some View {
        NavigationView{
            List(appetizer){ appetizer in
              AppetizerCard(appetizer: appetizer)
              
            }
            .navigationTitle("🚀 Appetizers")
        }.onAppear{
            getAppetizers();
        }
       
    }
}

#Preview {
    AppetizerListView()
}
