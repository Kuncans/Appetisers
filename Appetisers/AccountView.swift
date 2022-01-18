//
//  AccountView.swift
//  Appetisers
//
//  Created by Duncan Kent on 18/01/2022.
//

import SwiftUI

struct AccountView: View {
    var body: some View {
        NavigationView {
            Text("Account")
                .navigationTitle("😬 Account")
        }.navigationViewStyle(.stack)
        
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
