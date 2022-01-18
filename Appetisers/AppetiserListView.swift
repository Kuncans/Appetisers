//
//  AppetiserListVIew.swift
//  Appetisers
//
//  Created by Duncan Kent on 18/01/2022.
//

import SwiftUI

struct AppetiserListView: View {
    var body: some View {
        NavigationView {
            List(MockData.appetisers) { appetiser in
                Text(appetiser.name)
            }
            .navigationTitle("🌮 Appetisers")
        }
    }
}

struct AppetiserListView_Previews: PreviewProvider {
    static var previews: some View {
        AppetiserListView()
    }
}
