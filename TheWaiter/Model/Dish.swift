//
//  Dish.swift
//  TheWaiter
//
//  Created by João Aquino on 28/02/2019.
//  Copyright © 2019 João Aquino. All rights reserved.
//

import UIKit

class Dish: Decodable{
    let id: String
    let name: String
    let description:String
    let price: Double
    let addOns: [AddOn]
    
    init(id: String,name: String, description: String, price: Double, addOns:[AddOn]){
        self.id = id
        self.name = name
        self.description = description
        self.price = price
        self.addOns = addOns
    }
}

class DishOrder {
    var id: String
    var quantity: Int = 0
    var dish: Dish
    
    init(id:String,quantity: Int, dish: Dish) {
        self.id = id
        self.quantity = quantity
        self.dish = dish
    }
    
}

