//
//  NorwegianBlueParrot.swift
//  
//
//  Created by Julien Rahier on 26/06/2023.
//

import Foundation

class NorwegianBlueParrot: Parrot {
    
    // MARK: - Properties
    
    private let isNailed: Bool
    private let voltage: Double
    
    // MARK: - Initializer
    
    init(voltage: Double, isNailed: Bool) {
        self.isNailed = isNailed
        self.voltage = voltage
    }
    
    // MARK: - Interface
    
    public func speed() -> Double {
        return self.isNailed ? 0 : self.baseSpeed(voltage: self.voltage)
    }
    
    // MARK: - Inner work
    
    private func baseSpeed(voltage: Double) -> Double {
        min(24.0, voltage * self.baseSpeed)
    }

}
