//
//  AddOn.swift
//  TheWaiter
//
//  Created by Joao Paulo Aquino on 02/03/19.
//  Copyright © 2019 João Aquino. All rights reserved.
//

import Foundation

class AddOn: Decodable {
    let question: String
    let options: [String]
    let minSelected:Int = 0
    var maxSelected: Int?
    
    init(question:String, options:[String]) {
        self.question = question
        self.options = options
    }
}
