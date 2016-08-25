//
//  TrexTests.swift
//  ClassesNenums
//
//  Created by James Campagno on 7/29/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//



import Quick
import Nimble
@testable import ClassesNenums

class TrexSpec: QuickSpec {
    override func spec() {
        
        describe("Trex") { 
         
            let fred = Trex(name: "Fred", sex: .Male)

            describe("Designated Initializer") {
                it("Should initalize a Trex with all of its properties propertly set") {
                    
                    let expectedSpeed = Speed.Fast
                    let expectedDiet = Diet.MeatEater
                    let expectedName = "Fred"
                    let expectedSex = Sex.Male
                    let expectedIsAlive = true
                    
                    expect(fred.speed).to(equal(expectedSpeed))
                    expect(fred.diet).to(equal(expectedDiet))
                    expect(fred.name).to(equal(expectedName))
                    expect(fred.sex).to(equal(expectedSex))
                    expect(fred.isAlive).to(equal(expectedIsAlive))
                    
                }
            }
            
            describe("isAlive property") {
                it("Should be a boolean value that can be mutated (created with var)") {
                    
                    fred.isAlive = false
                    expect(fred.isAlive).to(beFalse())
                    
                }
            }
            
            describe("speed property") {
                it("Should be a Speed enum value that can be mutated (created with var)") {
                    
                    fred.speed = .Slow
                    expect(fred.speed).to(equal(Speed.Slow))
                    
                    fred.speed = .Medium
                    expect(fred.speed).to(equal(Speed.Medium))
                    
                    fred.speed = .Fast
                    expect(fred.speed).to(equal(Speed.Fast))
                    
                }
            }
            
            describe("speak()") {
                it("Should take in no arguments but return a String. The string returned should be ROAAAWWWWRRRRR!!!!!!") {
                    
                    let expectedResponse = "ROAAAWWWWRRRRR!!!!!!"
                    let actualResponse = fred.speak()
                    
                    expect(actualResponse).to(equal(expectedResponse))
                    
                }
            }
            
            describe("isFaster(thanTrex:)") {
                it("Should take in a Trex as an argument and return back a bool indicating whether or not self is faster than the trex passed in as an argument.") {
                    
                    let slowBetty = Trex(name: "Betty", sex: .Female)
                    
                    slowBetty.speed = .Slow
                    let response = fred.isFaster(thanTrex: slowBetty)
                    expect(response).to(beTrue())
                    
                    slowBetty.speed = .Medium
                    let otherResponse = fred.isFaster(thanTrex: slowBetty)
                    expect(otherResponse).to(beTrue())
                    
                }
                
            }
            
            describe("eat(otherTrex:)") {
                it("Should take in a Trex as an argument and not return back anything. It should check to see if self is faster than the trex passed in as an argument by calling on the isFaster(thanTrex:) function. If that function call returns back true, then we should set the isAlive property on the Trex passed in to false, otherwise do nothing.") {
                    
                    let brian = Trex(name: "Brian", sex: .Male)
                    brian.speed = .Slow
                    
                    fred.eat(otherTrex: brian)
                    expect(brian.isAlive).to(beFalse())
                    
                    // revive brian! only to be eaten again
                    brian.isAlive = true
                    
                    brian.speed = .Medium
                    fred.eat(otherTrex: brian)
                    expect(brian.isAlive).to(beFalse())
                    
                }
            }
        }
    }
}
