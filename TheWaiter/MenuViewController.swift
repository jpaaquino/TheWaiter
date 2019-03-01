//
//  MenuViewController.swift
//  TheWaiter
//
//  Created by João Aquino on 28/02/2019.
//  Copyright © 2019 João Aquino. All rights reserved.
//

import UIKit

class DishCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var valorLabel: UILabel!
    
    func configure(dish: Dish){
        self.nameLabel.text = dish.name
        self.descriptionLabel.text = dish.description
        self.valorLabel.text = dish.formattedPrice
    }
    
}

class MenuViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var viewModel: MenuViewModel!

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = viewModel.restaurantName
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfItems
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! DishCell
        let dish: Dish = viewModel.dishes[indexPath.row]
        cell.configure(dish: dish)
        
        return cell
    }
 

}
