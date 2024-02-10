//
//  AccountViewModel.swift
//  Appetizer
//
//  Created by Hadiuzzaman on 13/1/24.
//

import Foundation
import SwiftUI

class AccountViewModel: ObservableObject{
    
    @Published var user = User()
    
    @Published var isValidForm: Bool = false
    
    @AppStorage("user") private var userData : Data?
    
    func saveChanges(){
        guard isValidForm else{return}
        
        do{
            let data = try JSONEncoder().encode(user)
            userData = data
        }catch{
            print("Error on save user data")
        }
        print("Save Changes")
    }
    func retriveUser(){
        guard let userData = userData else {return}
        do{
            let u = try JSONDecoder().decode(User.self, from: userData)
            user = u
        }catch{
            print("Failed to fetch data")
        }
    }
    
    func validate () -> Void {
        if user.firstName.isEmpty || user.lastName.isEmpty || user.email.isEmpty {
            isValidForm = false
        }else{
            isValidForm = true
        }
    }
    
}
