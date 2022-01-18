//
//  Appetiser.swift
//  Appetisers
//
//  Created by Duncan Kent on 18/01/2022.
//

import Foundation

struct Appetiser: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetiserResponse {
    let request: [Appetiser]
}

struct MockData {

    static let sampleAppetiser = Appetiser(id: 0001,
                                           name: "Test Appetiser",
                                           description: "Test Description",
                                           price: 10.40,
                                           imageURL: "imageurl string test",
                                           calories: 200,
                                           protein: 100,
                                           carbs: 50)
    
    static let appetisers = [sampleAppetiser, sampleAppetiser, sampleAppetiser, sampleAppetiser]
    
}
