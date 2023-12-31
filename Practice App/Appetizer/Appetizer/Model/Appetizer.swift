//
//  Appetizer.swift
//  Appetizer
//
//  Created by Hadiuzzaman on 31/12/23.
//

import Foundation


struct AppetizerResponse: Codable {
    let request: [Appetizer]
}


struct Appetizer: Codable, Identifiable {
    let protein: Int
    let name: String
    let id, calories: Int
    let description: String
    let price: Double
    let carbs: Int
    let imageURL: String
}

struct MockData{
    static let sampleAppetizer = Appetizer(protein: 1, name: "Test Appetizer", id: 55, calories: 99, description: "This is test description fo appetizer", price: 450.44, carbs: 44, imageURL: "")
    
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer]
    
}
