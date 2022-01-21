//
//  AppetisersApp.swift
//  Appetisers
//
//  Created by Duncan Kent on 18/01/2022.
//

import SwiftUI

@main
struct AppetisersApp: App {
    
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            AppetiserTabView().environmentObject(order)
        }
    }
}
