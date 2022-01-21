//
//  OrderViewModel.swift
//  Appetisers
//
//  Created by Duncan Kent on 21/01/2022.
//

import SwiftUI

final class OrderViewModel: ObservableObject {
 
    @Published var orderItems = MockData.orderItems

    func removeAppetiser (appetiser: Appetiser) {
        orderItems = orderItems.filter {$0.id != appetiser.id}
    }
    
}
