//
//  AccountView.swift
//  Appetisers
//
//  Created by Duncan Kent on 18/01/2022.
//

import SwiftUI

struct AccountView: View {
    
    @StateObject var viewModel = AccountViewModel()

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Personal Info")) {
                    TextField("First Name", text: $viewModel.user.firstName)
                    TextField("Last Name", text: $viewModel.user.lastName)
                    TextField("Email", text: $viewModel.user.email)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                    DatePicker("Birth Date", selection: $viewModel.user.birthDate, displayedComponents: .date)
                    
                }
                Section(header: Text("Requests")) {
                    Toggle("Extra Napkins", isOn: $viewModel.user.extraNapkins)
                    Toggle("Unlimited Refills", isOn: $viewModel.user.unlimitedRefills)
                }.toggleStyle(SwitchToggleStyle(tint: .brandPrimary))
                
                Button {
                    viewModel.saveChanges()
                } label: {
                    Text("Save Changes")
                        .frame(maxWidth: .infinity)
                        .multilineTextAlignment(.center)
                }

            }
            .navigationTitle("😬 Account")
        }
        .onAppear(perform: {
            viewModel.loadUserData()
        })
        .navigationViewStyle(.stack)
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title,
                  message: alertItem.message,
                  dismissButton: alertItem.dismissButton)
            }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
