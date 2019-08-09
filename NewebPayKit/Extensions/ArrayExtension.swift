//
//  ArrayExtension.swift
//  CreditCard
//
//  Created by Eden Li on 2019/6/27.
//  Copyright © 2019 Fulldot. All rights reserved.
//

import Foundation

internal extension Array where Element == UInt8
{
    var hexString: String {
        
        let hexString: String = self.reduce("") {
            
            let character = String(format: "%.2x", $1)
            
            return $0 + character
        }
        
        return hexString
    }
    
    var debugHexString: String {
        
        let hexString: String = self.reduce("") {
            
            let character = String(format: "%.2x", $1)
            
            return $0 + " " + character
        }
        
        return hexString
    }
}