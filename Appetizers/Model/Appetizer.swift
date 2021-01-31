//
//  Appetizer.swift
//  Appetizers
//
//  Created by Christian Skorobogatow on 19/1/21.
//

import Foundation

struct Appetizer: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}


struct MockData {
    static let sampleAppetizer = Appetizer(id: 0001,
                                           name: "Test Appetizer",
                                           description: "This is a description for my appetizer",
                                           price: 9.99,
                                           imageURL: "",
                                           calories: 99,
                                           protein: 99,
                                           carbs: 99)
    
    static let appetizers =  [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
    
    
    static let orderItemOne = Appetizer(id: 0001,
                                           name: "Test Appetizer One",
                                           description: "This is a description for my appetizer",
                                           price: 9.99,
                                           imageURL: "",
                                           calories: 99,
                                           protein: 99,
                                           carbs: 99)
    
    static let OrderItemTwo = Appetizer(id: 0002,
                                           name: "Test Appetizer Two",
                                           description: "This is a description for my appetizer",
                                           price: 9.99,
                                           imageURL: "",
                                           calories: 99,
                                           protein: 99,
                                           carbs: 99)
    
    static let OrderItemThree = Appetizer(id: 0003,
                                           name: "Test Appetizer Three",
                                           description: "This is a description for my appetizer",
                                           price: 9.99,
                                           imageURL: "",
                                           calories: 99,
                                           protein: 99,
                                           carbs: 99)
    
    static let orderItems = [orderItemOne, OrderItemTwo, OrderItemThree]
}
