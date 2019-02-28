//
//  Dish.swift
//  TheWaiter
//
//  Created by João Aquino on 28/02/2019.
//  Copyright © 2019 João Aquino. All rights reserved.
//

import UIKit


class Restaurant{
    static let menuItems = Menu(dishes: [Dish(name: "Carne Assada", description: "Arroz, feijão, batata cozida e salada!", price: 23.99, addOns: []),Dish(name: "Espaguete com frango assado", description: "", price: 23.00, addOns: []),Dish(name: "Contra Filé Especial", description: "Arroz, feijão, Legumes ou fritas!", price: 33.00, addOns: []) ])

    
    static let terraBrasil = Restaurant(name: "Terra Brasil Restaurante", menu: Restaurant.menuItems, logo: UIImage(named: "Logo-Terra-Brasil"))
    
    let menu: Menu
    let name: String
    var mainColor: UIColor?
    var secondaryColor: UIColor?
    var logo: UIImage?
    
    init(name: String, menu:Menu, logo: UIImage?){
        self.name = name
        self.menu = menu
        self.logo = logo
    }
}

class Menu {
    let dishes: [Dish]
    init(dishes:[Dish]){
        self.dishes = dishes
    }
}

class Dish {
    let name: String
    let description:String
    let price: Double
    var image: UIImage?
    let addOns: [AddOn]
    
    var formattedPrice: String {
        return "R$ \(price)"
    }
    
    init(name: String, description: String, price: Double, addOns:[AddOn]){
    self.name = name
    self.description = description
    self.price = price
    self.addOns = addOns
    }
}

class AddOn {
    let question: String
    let options: [String]
    let minSelected:Int = 0
    var maxSelected: Int?
    
    init(question:String, options:[String]) {
        self.question = question
        self.options = options
    }
}
