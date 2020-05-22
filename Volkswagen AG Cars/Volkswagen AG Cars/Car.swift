//
//  Car.swift
//  Volkswagen AG Cars
//
//  Created by Burak Yıldırım on 22.05.2020.
//  Copyright © 2020 Burak Yıldırım. All rights reserved.
//

import Foundation

protocol CarProtocol {
    func getBrand() ->String
    func getModel() -> String
    func getFuelType() -> String
    func getTourque() -> Int
    func getHorsePower() -> Int
    func getGearNumber() -> Int
    func getSeatType() -> String
    func getColor() -> String
}
