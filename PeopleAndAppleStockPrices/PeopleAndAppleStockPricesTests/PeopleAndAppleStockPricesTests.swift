//
//  PeopleAndAppleStockPricesTests.swift
//  PeopleAndAppleStockPricesTests
//
//  Created by Pursuit on 12/10/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import XCTest
//MARK: please dont forget
//to get access to the other folder PLEASE DONT FORGET THIS!!!
@testable import PeopleAndAppleStockPrices

class PeopleAndAppleStockPricesTests: XCTestCase {

let filename = "applstockinfo"
let ext = "json"
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    
    
    func testUserInfoData() {
        // arrange
        let expUserCount = 200 // the amount of users
        
        //act
        let users = UserInfo.getUserInfo()
        
        //assert
        XCTAssertEqual(users.count, expUserCount)
    }
    
    func testFirstUser() {
        
        //arrange
        let expectedfirstUser = "eugene"
        
        // act
        let firstUser = UserInfo.getUserInfo().first?.name.first
        
        // assrt
        XCTAssertEqual(expectedfirstUser, firstUser)
    }
    
    
    func testReadingAppStockData() {
        //arrange
       // let sut = when should I use sut again
        
       let data = Bundle.main.url(forResource: filename, withExtension: ext)
        
        // this will check if there is any data inside of the file at all
        XCTAssertNotNil(data)
     
    }
    
    func testAmountOfStocksData() {
        
        //arrange
      //  let data = Bundle.main.url(forResource: filename, withExtension: ext )
        
        //act
      //  let stocks = Stock.getStocks(from: data)
        
        //assert
       // XCTAssertGreaterThan(stocks, 0, "The amount of stocks is \(stocks.count)")
        
    }
    
    // testdrivedevelopment
    
}
