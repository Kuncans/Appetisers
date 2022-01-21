//
//  Order.swift
//  Appetisers
//
//  Created by Duncan Kent on 21/01/2022.
//

import SwiftUI

final class Order: ObservableObject {
    
    @Published var items: [Appetiser] = []
    
    var totalPrice: Double {
        items.reduce(0) {$0 + $1.price}
    }
    
    func add(_ appetiser: Appetiser) {
        
        var isPresent = false
        
        for item in items {
            if appetiser.id == item.id {
                isPresent = true
            }
        }
        
        if !isPresent { items.append(appetiser) }
    }
    
    func remove(_ appetiser: Appetiser) {
        items = items.filter {$0.id != appetiser.id}
    }
    
}
