//
//  Parrot.swift
//  
//
//  Created by Julien Rahier on 26/06/2023.
//

import Foundation

protocol Parrot {
    var baseSpeed: Double { get }
    func speed() -> Double
}


extension Parrot {
    var baseSpeed: Double {
         return 12
    }
}
