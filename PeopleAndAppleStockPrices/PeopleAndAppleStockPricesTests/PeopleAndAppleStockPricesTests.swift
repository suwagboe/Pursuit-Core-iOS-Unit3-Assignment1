//
//  PeopleAndAppleStockPricesTests.swift
//  PeopleAndAppleStockPricesTests
//
//  Created by Pursuit on 12/10/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import XCTest
@testable import PeopleAndAppleStockPrices // to get access to the other folder
class PeopleAndAppleStockPricesTests: XCTestCase {

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
    
    
}
