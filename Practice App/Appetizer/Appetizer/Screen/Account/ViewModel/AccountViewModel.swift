//
//  AccountViewModel.swift
//  Appetizer
//
//  Created by Hadiuzzaman on 13/1/24.
//

import Foundation

class AccountViewModel: ObservableObject{
    
    @Published var firstName: String = ""
    @Published var lastName: String = ""
    @Published var email: String = ""
    @Published var date: Date = Date.now
    @Published var extraNapkin: Bool = false
    @Published var frequentRefill: Bool = false
    @Published var isValidForm: Bool = false
    
    func validate () -> Void {
        if firstName.isEmpty || lastName.isEmpty || email.isEmpty {
            isValidForm = false
        }else{
            isValidForm = true
        }
    }
    
}
