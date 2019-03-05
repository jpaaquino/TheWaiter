//
//  MenuViewController.swift
//  TheWaiter
//
//  Created by João Aquino on 28/02/2019.
//  Copyright © 2019 João Aquino. All rights reserved.
//

import UIKit

class DishCell: UITableViewCell {
    
    var viewModel: DishViewModel!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var valorLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    
    func configure(viewModel: DishViewModel){
        self.viewModel = viewModel
        self.nameLabel.text = viewModel.name
        self.descriptionLabel.text = viewModel.description
        self.valorLabel.text = viewModel.price
    }
    
    func updateNumberOfItems(n:Int){
        self.numberLabel.text = String(n)
    }

}

class DishViewModel {
    
    init(dish: Dish) {
    self.dish = dish
    }
    
    let dish: Dish
    
    var name: String {
        return dish.name
    }
    
    var description: String {
        return dish.description
    }
    
    var price: String? {
        return dish.price.convertToReaisFormat()
    }

    
}

class MenuViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var menuViewModel: MenuViewModel!    

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        menuViewModel = MenuViewModel(restaurant: MockRestaurant().get())
        self.title = menuViewModel.restaurantName
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let dish = menuViewModel.dishes[indexPath.row]
        let order = DishOrder(id: dish.id, quantity: 1, dish: dish)
        menuViewModel.addDishOrder(dishOrder: order)
        let n = menuViewModel.dishOrdersForDish(for: indexPath.row)
        let cell = tableView.cellForRow(at: indexPath) as! DishCell
        cell.updateNumberOfItems(n: n)
        
    }
    
 
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuViewModel.numberOfItems
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! DishCell
        let dishViewModel = menuViewModel.dishViewModel(for: indexPath.row)
        cell.configure(viewModel: dishViewModel)
        
        return cell
    }
 
}
