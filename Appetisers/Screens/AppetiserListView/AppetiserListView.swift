//
//  AppetiserListVIew.swift
//  Appetisers
//
//  Created by Duncan Kent on 18/01/2022.
//

import SwiftUI

struct AppetiserListView: View {
    
    @StateObject var viewModel = AppetiserListViewModel()
    @State private var isShowingDetail = false
    @State private var selectedAppetiser: Appetiser?
    
    var body: some View {
        ZStack {
            NavigationView {
                List(viewModel.appetisers) { appetiser in
                    AppetiserCellView(appetiser: appetiser)
                        .onTapGesture {
                            selectedAppetiser = appetiser
                            isShowingDetail = true
                        }
                }
                .navigationTitle("🌮 Appetisers")
                .listStyle(.plain)
                .disabled(isShowingDetail)
            }
            .navigationViewStyle(.stack)
            .onAppear {
                    viewModel.getAppetisers()
            }
            .blur(radius: isShowingDetail ? 20 : 0)
            
            if isShowingDetail {
                AppetiserDetailView(appetiser: selectedAppetiser!,
                                    isShowingDetail: $isShowingDetail)
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
