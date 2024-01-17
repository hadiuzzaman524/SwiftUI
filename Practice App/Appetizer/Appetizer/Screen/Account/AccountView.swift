//
//  AccountView.swift
//  Appetizer
//
//  Created by Hadiuzzaman on 31/12/23.
//

import SwiftUI

struct AccountView: View {
 
    
    @StateObject var viewModel = AccountViewModel()
    
   @State private var isInvalid : Bool = false
    
    var body: some View {
        NavigationView{
            Form{
                Section(header: Text("User Information")){
                    
                    TextField("First name", text: $viewModel
                        .firstName)
                    TextField("Last name", text: $viewModel.lastName)
                    TextField("Email", text: $viewModel.email)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                    DatePicker("Birthday" ,selection: $viewModel.date, displayedComponents: .date)
                    Button{
                        viewModel.validate()
                        if(viewModel.isValidForm){
                        
                            isInvalid = false;
                            print(viewModel.firstName)
                            print(viewModel.lastName)
                        }else{
                            isInvalid = true
                        }
                    } label: {
                       Text("Save Information")
                    }
                    
                }
                Section(header: Text("Additional info")){
                    Toggle("Extra napkins", isOn: $viewModel.extraNapkin )
                    Toggle("Frequent refill", isOn: $viewModel.frequentRefill )
                }
            }
            .navigationTitle("🚀 Account")
        }.alert(isPresented: $isInvalid){
            Alert(title: Text("Form can't be empty"))

        }
      
    }
}

#Preview {
    AccountView()
}
