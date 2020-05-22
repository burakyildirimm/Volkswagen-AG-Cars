//
//  VolkswagenFactory.swift
//  Volkswagen AG Cars
//
//  Created by Burak Yıldırım on 22.05.2020.
//  Copyright © 2020 Burak Yıldırım. All rights reserved.
//

import Foundation

protocol CarFactory {
    func createCar(brand: String, model: String, fueltype: String, tourque: Int, horsePower: Int, gear: Int, seats: String, color: String) throws -> CarProtocol
    func pricing(brand: String, model: String, fueltype: String, tourque: Int, horsePower: Int, gear: Int, seats: String, color: String) -> Int
}
