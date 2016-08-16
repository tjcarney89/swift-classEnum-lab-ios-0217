//
//  Bird.swift
//  ClassesNenums
//
//  Created by James Campagno on 7/29/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation


enum Speed: Int {
    case Slow, Medium, Fast
    
    func isFaster(thanSpeed speed: Speed) -> Bool {
        return self.rawValue > speed.rawValue
    }
}

enum Diet {
    case MeatEater, Vegetarian
}

enum Sex {
    case Male, Female
}


class Trex {
    var speed: Speed = .Fast
    let diet: Diet = .MeatEater
    
    let name: String
    let sex: Sex
    var isAlive: Bool = true
    
    init(name: String, sex: Sex) {
        self.name = name
        self.sex = sex
    }
    
    func speak() -> String {
        return "ROAAAWWWWRRRRR!!!!!!"
    }
    
    func isFaster(thanTrex trex: Trex) -> Bool {
        return speed.isFaster(thanSpeed: trex.speed)
    }
    
    func eat(otherTrex trex: Trex) {
        if isFaster(thanTrex: trex) {
            trex.isAlive = false
        }
    }
}
