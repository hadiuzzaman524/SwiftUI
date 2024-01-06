//
//  AppetizerListViewModel.swift
//  Appetizer
//
//  Created by Hadiuzzaman on 6/1/24.
//

import SwiftUI

class AppetizerListViewModel : ObservableObject{
    @Published var appetizer : [Appetizer] = []
    
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
    
}
