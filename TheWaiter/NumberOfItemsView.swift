//
//  numberOfItemsView.swift
//  TheWaiter
//
//  Created by Joao Paulo Aquino on 04/03/19.
//  Copyright © 2019 João Aquino. All rights reserved.
//

import UIKit

 class NumberOfItemsView: UIView {
    
    @IBOutlet weak var numberLabel: UILabel!
    
    var numberOfItems: Int = 0 {
        didSet{
            if(numberOfItems > 0){
                self.isHidden = false
                //numberLabel.text = String(numberOfItems)
            }else{
                self.isHidden = true
            }
        }
    }
    

    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
    }
    
   
    
}
