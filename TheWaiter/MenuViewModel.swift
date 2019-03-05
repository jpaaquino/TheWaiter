//
//  MenuViewModel.swift
//  TheWaiter
//
//  Created by João Aquino on 01/03/2019.
//  Copyright © 2019 João Aquino. All rights reserved.
//

import UIKit


class MenuViewModel {
    
    init(restaurant: Restaurant){
    self.restaurant = restaurant
    }
    
    let restaurant: Restaurant
        
    var restaurantName: String {
        return restaurant.name
    }
    
    var numberOfItems: Int {
        return restaurant.dishes.count
    }
    
    var dishes:[Dish]{
        return restaurant.dishes
    }
    
    var dishOrders:[DishOrder]{
        get {
        return restaurant.dishOrders
        }
    }
    func addDishOrder(dishOrder: DishOrder){
        restaurant.dishOrders.append(dishOrder)
    }
    
    func dishViewModel(for index: Int) -> DishViewModel {
        let dish: Dish = self.dishes[index]
        return DishViewModel(dish: dish)
    }
    
    func dishOrdersForDish(for index:Int) -> Int {
        let dish: Dish = self.dishes[index]
        let dishId = dish.id
        var n = 0
        for eachDish in dishOrders {
            if(eachDish.id == dishId){
                n += 1
            }
        }
        return n

    }
    

}
