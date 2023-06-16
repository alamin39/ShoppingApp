//
//  Product.swift
//  ShoppingApp
//
//  Created by Al-Amin on 2023/06/14.
//

import Foundation


struct Product: Identifiable {
    var id = UUID()
    let name: String
    let image: String
    let price: Int
}

var productList = [Product(name: "Orange Sweater", image: "sweater1", price: 111),
                   Product(name: "Red Sweater", image: "sweater2", price: 211),
                   Product(name: "Purple Sweater", image: "sweater3", price: 311),
                   Product(name: "Blue Sweater", image: "sweater4", price: 411),
                   Product(name: "Yellow Sweater", image: "sweater5", price: 511),
                   Product(name: "Gray Sweater", image: "sweater6", price: 611),
                   Product(name: "Black Sweater", image: "sweater7", price: 711),
                   Product(name: "Ocean Sweater", image: "sweater8", price: 811),
                   Product(name: "Green Sweater", image: "sweater9", price: 911),
                   Product(name: "Bluish Sweater", image: "sweater10", price: 251),
                   Product(name: "Icy Sweater", image: "sweater11", price: 241)]
