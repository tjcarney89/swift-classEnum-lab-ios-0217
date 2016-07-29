//
//  SpeedTest.swift
//  ClassesNenums
//
//  Created by James Campagno on 7/29/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Quick
import Nimble
@testable import ClassesNenums

class SpeedSpec: QuickSpec {
    override func spec() {
        
        describe("Speed") {
            
            var speed = Speed.Fast
            
            describe("isFaster(thanSpeed:") {
                it("Should take in an argument of type Speed and compare the rawValue of self against the rawValue of the argument passed in. If it's greater, it should return true.") {
                    
                    var otherSpeed = Speed.Slow
                    
                    let result = speed.isFaster(thanSpeed: otherSpeed)
                    expect(result).to(equal(true))
                    
                    // changing otherSpeed to medium
                    otherSpeed = .Medium
                    let result2 = speed.isFaster(thanSpeed: otherSpeed)
                    expect(result2).to(equal(true))
                    
                    
                    // changing speed to medium, otherSpeed to fast
                    speed = .Medium
                    otherSpeed = .Fast
                    let result3 = speed.isFaster(thanSpeed: otherSpeed)
                    expect(result3).to(equal(false))
                }
            }
        }
    }
}