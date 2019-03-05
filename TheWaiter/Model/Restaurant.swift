//
//  Restaurant.swift
//  TheWaiter
//
//  Created by Joao Paulo Aquino on 02/03/19.
//  Copyright © 2019 João Aquino. All rights reserved.
//

import UIKit

class Restaurant {
        
    let dishes: [Dish]
    let name: String
    var dishOrders: [DishOrder] = []
    
    init(name: String, dishes:[Dish]){
        self.name = name
        self.dishes = dishes
    }

}

class MockRestaurant {
    
    let name = "Terra Brasil Restaurante"
    
    let dishes:[Dish] = [
    Dish(id: "0001", name: "Moqueca de camarão", description: "", price: 69.00, addOns: [AddOn(question: "Acompanhamento", options: ["Batatas saute","arroz branco","Salada verde"])]),
    Dish(id: "0002", name: "Frutos do mar grelhado com salada", description: "Grilled seafood with salad", price: 115.00, addOns: [AddOn(question: "Acompanhamento", options: ["Batatas saute","arroz branco","Salada verde"])]),
    Dish(id: "0003", name: "Filé de peixe", description: "Grilled fish fillet", price: 69.00, addOns: [])

    ]
    
    func get() -> Restaurant {
        return Restaurant(name: name, dishes: dishes)
    }
    
}
