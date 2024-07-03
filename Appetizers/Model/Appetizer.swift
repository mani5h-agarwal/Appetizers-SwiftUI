//
//  Appetizer.swift
//  Appetizers
//
//  Created by Manish Agarwal on 01/07/24.
//

import Foundation

struct Appetizer : Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct  AppetizerResponse: Decodable{
    let request: [Appetizer]
}

struct MockData{
    static let sampleAppetizer = Appetizer(id: 0001, name: "Test", description: "yummy", price: 4234, imageURL: "", calories: 45, protein: 435, carbs: 45)
    
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer ]
}
