//
//  Audi.swift
//  Volkswagen AG Cars
//
//  Created by Burak Yıldırım on 22.05.2020.
//  Copyright © 2020 Burak Yıldırım. All rights reserved.
//

import Foundation

struct Audi: CarProtocol {
    
    var brand: String
    var model: String
    var fueltype: String
    var tourque: Int
    var horsePower: Int
    var gear: Int
    var seats: String
    var color: String
    
    
    func getBrand() -> String {
        return brand
    }
    
    func getModel() -> String {
        return model
    }
    
    func getFuelType() -> String {
        return fueltype
    }
    
    func getTourque() -> Int {
        return tourque
    }
    
    func getHorsePower() -> Int {
        return horsePower
    }
    
    func getGearNumber() -> Int {
        return gear
    }
    
    func getSeatType() -> String {
        return seats
    }
    
    func getColor() -> String {
        return color
    }
    
    
}
