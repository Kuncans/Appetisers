//
//  AppetiserListVIew.swift
//  Appetisers
//
//  Created by Duncan Kent on 18/01/2022.
//

import SwiftUI

struct AppetiserListView: View {
       
    @StateObject var viewModel = AppetiserListViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.appetisers) { appetiser in
                    AppetiserCellView(appetiser: appetiser)
                }
                .navigationTitle("🌮 Appetisers")
                .listStyle(.plain)
        }
        .onAppear {
            viewModel.getAppetisers()
        }
        .navigationViewStyle(.stack)
    }
    
}

struct AppetiserListView_Previews: PreviewProvider {
    static var previews: some View {
        AppetiserListView()
    }
}
