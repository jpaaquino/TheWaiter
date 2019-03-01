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
        return restaurant.menu.dishes.count
    }
    
    var dishes:[Dish]{
        return restaurant.menu.dishes
    }
    

    
    
    
}
