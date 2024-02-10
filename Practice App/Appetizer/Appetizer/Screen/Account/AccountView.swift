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
                Section{
                    TextField("First name", text: $viewModel.user.firstName)
                    TextField("Last name", text: $viewModel.user.lastName)
                    TextField("Email", text: $viewModel.user.email)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                    DatePicker("Birthday" ,selection: $viewModel.user.date, displayedComponents: .date)
                    Button{
                        viewModel.validate()
                        if(viewModel.isValidForm){
                    
                            isInvalid = false
                            viewModel.saveChanges()
                        }else{
                            isInvalid = true
                        }
                    } label: {
                       Text("Save Information")
                    }
                    
                } header: {
                   Text("User Information")
                }
                Section{
                    Toggle("Extra napkins", isOn: $viewModel.user.extraNapkin )
                    Toggle("Frequent refill", isOn: $viewModel.user.frequentRefill )
                }header: {
                    Text("Additional info")
                }
            }
            .navigationTitle("🚀 Account")
        }.onAppear{
            viewModel.retriveUser()
        }
        .alert(isPresented: $isInvalid){
            Alert(title: Text("Form can't be empty"))

        }
      
    }
}

#Preview {
    AccountView()
}
