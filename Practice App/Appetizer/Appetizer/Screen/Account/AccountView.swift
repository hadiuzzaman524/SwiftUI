//
//  AccountView.swift
//  Appetizer
//
//  Created by Hadiuzzaman on 31/12/23.
//

import SwiftUI

struct AccountView: View {
    @State var firstName: String = ""
    @State var lastName: String = ""
    @State var email: String = ""
    @State var date: Date = Date.now
    @State var extraNapkin: Bool = false
    @State var frequentRefill: Bool = false
    
    var body: some View {
        NavigationView{
            Form{
                Section(header: Text("User Information")){
                    TextField("First name", text: $firstName)
                    TextField("Last name", text: $lastName)
                    TextField("Email", text: $email)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                    DatePicker("Birthday" ,selection: $date, displayedComponents: .date)
                    Button{
                        print("Button Tap")
                    } label: {
                       Text("Save Information")
                    }
                    
                }
                Section(header: Text("Additional info")){
                    Toggle("Extra napkins", isOn: $extraNapkin )
                    Toggle("Frequent refill", isOn: $frequentRefill )
                }
            }
            .navigationTitle("🚀 Account")
        }
      
    }
}

#Preview {
    AccountView()
}
