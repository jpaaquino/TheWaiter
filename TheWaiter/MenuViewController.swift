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
    
}

class MenuViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var restaurant: Restaurant = Restaurant.terraBrasil
    

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = restaurant.name

    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurant.menu.dishes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! DishCell
        let dish = restaurant.menu.dishes[indexPath.row]
        cell.nameLabel.text = dish.name
        cell.descriptionLabel.text = dish.description
        cell.valorLabel.text = dish.formattedPrice
        
        return cell
    }
 

}
