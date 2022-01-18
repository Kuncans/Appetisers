//
//  AppetiserListViewModel.swift
//  Appetisers
//
//  Created by Duncan Kent on 18/01/2022.
//

import SwiftUI

final class AppetiserListViewModel: ObservableObject {
    
    @Published var appetisers: [Appetiser] = []
    @Published var alertItem: AlertItem?
    
    func getAppetisers() {
        NetworkManager.shared.getAppetisers { result in
            DispatchQueue.main.async {
                switch result {
                case .success(let appetisers):
                    self.appetisers = appetisers
                    
                case.failure(let error):
                    switch error {
                        
                    case .invalidData:
                        self.alertItem = AlertContext.invalidData
                        
                    case .invalidURL:
                        self.alertItem = AlertContext.invalidURL
                        
                    case .invalidResponse:
                        self.alertItem = AlertContext.invalidResponse
                        
                    case .unableToComplete:
                        self.alertItem = AlertContext.unableToComplete
                    }
                }
            }
        }
    }
}
