//
//  AccountView.swift
//  Appetisers
//
//  Created by Duncan Kent on 18/01/2022.
//

import SwiftUI

struct AccountView: View {
    
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var email = ""
    @State private var birthDate = Date()
    @State private var extraNapkins = false
    @State private var unlimitedRefills = false

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Personal Info")) {
                    TextField("First Name", text: $firstName)
                    TextField("Last Name", text: $lastName)
                    TextField("Email", text: $email)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                    DatePicker("Birth Date", selection: $birthDate, displayedComponents: .date)
                    
                    Button {
                        print("Save")
                    } label: {
                        Text("Save Changes")
                    }

                }
                Section(header: Text("Requests")) {
                    Toggle("Extra Napkins", isOn: $extraNapkins)
                    Toggle("Unlimited Refills", isOn: $unlimitedRefills)
                }.toggleStyle(SwitchToggleStyle(tint: .brandPrimary))

            }
            .navigationTitle("😬 Account")
        }.navigationViewStyle(.stack)
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
