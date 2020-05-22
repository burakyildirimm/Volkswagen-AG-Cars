//
//  BentleyFactory.swift
//  Volkswagen AG Cars
//
//  Created by Burak Yıldırım on 22.05.2020.
//  Copyright © 2020 Burak Yıldırım. All rights reserved.
//

import Foundation

struct BentleyFactory: CarFactory {
    func pricing(brand: String, model: String, fueltype: String, tourque: Int, horsePower: Int, gear: Int, seats: String, color: String) -> Int {
        
        var total = 0
        
        let brandPrice = 80000
        var fuelPrice = 0
        let tourqueperunitPrice = 400
        let hourseperunitPrice = 700
                
        
        switch fueltype {
        case "diesel":
            fuelPrice = 3000
            break
        case "petrol":
            fuelPrice = 5000
            break
        case "hybrid":
            fuelPrice = 7000
            break
        default:
            fuelPrice = 0
            break
        }
        
        
        total = brandPrice + fuelPrice + (tourqueperunitPrice * tourque) + (hourseperunitPrice * horsePower)
        
        
        
        return total
        
    }
    
    func createCar(brand: String, model: String, fueltype: String, tourque: Int, horsePower: Int, gear: Int, seats: String, color: String) throws -> CarProtocol {
        return Bentley(brand: brand, model: model, fueltype: fueltype, tourque: tourque, horsePower: horsePower, gear: gear, seats: seats, color: color)
    }
    
}
