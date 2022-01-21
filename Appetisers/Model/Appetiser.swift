//
//  Appetiser.swift
//  Appetisers
//
//  Created by Duncan Kent on 18/01/2022.
//

import Foundation

struct Appetiser: Decodable, Identifiable, Equatable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetiserResponse: Decodable {
    let request: [Appetiser]
}

struct MockData {

    static let sampleAppetiser = Appetiser(id: 0001,
                                           name: "Test Appetiser",
                                           description: "This is a test description. It is very descriptive. Yum.",
                                           price: 10.40,
                                           imageURL: "imageurl string test",
                                           calories: 200,
                                           protein: 100,
                                           carbs: 50)
    
    static let appetisers = [sampleAppetiser, sampleAppetiser, sampleAppetiser, sampleAppetiser]
    
    static let orderAppetiser1 = Appetiser(id: 0001,
                                          name: "Test Appetiser 1",
                                          description: "This is a test description. It is very descriptive. Yum.",
                                          price: 10.40,
                                          imageURL: "imageurl string test",
                                          calories: 200,
                                          protein: 100,
                                          carbs: 50)
    
    static let orderAppetiser2 = Appetiser(id: 0002,
                                           name: "Test Appetiser 2",
                                           description: "This is a test description. It is very descriptive. Yum.",
                                           price: 10.40,
                                           imageURL: "imageurl string test",
                                           calories: 200,
                                           protein: 100,
                                           carbs: 50)
    
    static let orderAppetiser3 = Appetiser(id: 0003,
                                           name: "Test Appetiser 3",
                                           description: "This is a test description. It is very descriptive. Yum.",
                                           price: 10.40,
                                           imageURL: "imageurl string test",
                                           calories: 200,
                                           protein: 100,
                                           carbs: 50)
    
    static let orderItems = [orderAppetiser1, orderAppetiser2, orderAppetiser3]
}
