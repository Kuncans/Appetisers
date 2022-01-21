//
//  Order.swift
//  Appetisers
//
//  Created by Duncan Kent on 21/01/2022.
//

import SwiftUI

final class Order: ObservableObject {
    
    @Published var items: [Appetiser] = []
    
    func add(_ appetiser: Appetiser) {
        items.append(appetiser)
    }
    
    func remove(_ appetiser: Appetiser) {
        items = items.filter {$0.id != appetiser.id}
    }
    
}
