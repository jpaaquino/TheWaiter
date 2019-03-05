//
//  ExtensionDouble.swift
//  TheWaiter
//
//  Created by João Aquino on 01/03/2019.
//  Copyright © 2019 João Aquino. All rights reserved.
//

import Foundation

public extension Double {
    
    func convertToReaisFormat() -> String?{
        let formatter = NumberFormatter()
        formatter.locale = Locale(identifier: "pt-br")
        formatter.numberStyle = .currency
        if let formattedTipAmount = formatter.string(from: self as NSNumber) {
            print(formattedTipAmount)
            return formattedTipAmount
        }
        return nil
        
    }
    
}
