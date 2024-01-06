//
//  AppetizerListViewModel.swift
//  Appetizer
//
//  Created by Hadiuzzaman on 6/1/24.
//

import SwiftUI

class AppetizerListViewModel : ObservableObject{
    @Published var appetizer : [Appetizer] = []
    @Published var errorMessage: String = ""
    @Published var hasError: Bool = false
    
    func getAppetizers(){
        
        NetworkManager.shared.getAppetizers(completed:{result in
          
            DispatchQueue.main.async{
                switch(result){
                case .success(let appetizer):
                    self.appetizer = appetizer
                    
                case .failure(let error):
                    switch(error){
                    case .invalidURL:
                        self.errorMessage = "Invalid Url"
                    case .invalidResponse:
                        self.errorMessage = "Invalid Response"
                    case .invalidData:
                        self.errorMessage = "Invalid Data"
                    case .unableToComplete:
                        self.errorMessage = "Unable to complete"
                    }
                    
                    if(!self.errorMessage.isEmpty){
                        self.hasError = true
                    }
                }
            }
            
        })
    }
    
}
