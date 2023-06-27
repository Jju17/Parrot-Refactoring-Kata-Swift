//
//  AfricanParrot.swift
//  
//
//  Created by Julien Rahier on 26/06/2023.
//

import Foundation

class AfricanParrot: Parrot {
    
    // MARK: - Properties
    
    private var loadFactor: Double = 9.0
    private var numberOfCoconuts: Int
    
    // MARK: - Initializer
    
    init(numberOfCoconuts: Int = 0) {
        self.numberOfCoconuts = numberOfCoconuts
    }
    
    // MARK: - Interface
    
    public func speed() -> Double {
        return max(0, baseSpeed - loadFactor * Double(numberOfCoconuts))
    }

}
