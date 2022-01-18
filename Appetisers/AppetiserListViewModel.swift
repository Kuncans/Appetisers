//
//  AppetiserListViewModel.swift
//  Appetisers
//
//  Created by Duncan Kent on 18/01/2022.
//

import SwiftUI

final class AppetiserListViewModel: ObservableObject {
    
    @Published var appetisers: [Appetiser] = []
    
    func getAppetisers() {
        NetworkManager.shared.getAppetisers { result in
            DispatchQueue.main.async {
                switch result {
                case .success(let appetisers):
                    self.appetisers = appetisers
                case.failure(let error):
                    print(error.localizedDescription)
                }
            }

        }
    }
    
}
