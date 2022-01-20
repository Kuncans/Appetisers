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
        ZStack {
            NavigationView {
                List(viewModel.appetisers) { appetiser in
                    AppetiserCellView(appetiser: appetiser)
                }
                .navigationTitle("🌮 Appetisers")
                .listStyle(.plain)
            }
            .navigationViewStyle(.stack)
                .onAppear {
                    viewModel.getAppetisers()
                }
            
            if viewModel.isLoading {
                LoadingView()
            }
            
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title,
                  message: alertItem.message,
                  dismissButton: alertItem.dismissButton)
        }
    }
}

struct AppetiserListView_Previews: PreviewProvider {
    static var previews: some View {
        AppetiserListView()
    }
}
