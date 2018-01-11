//
//  BRSActivityIndicatorTests.swift
//  BRSAddOnsExampleTests
//
//  Created by Bindu on 11/01/18.
//  Copyright © 2018 Bindu. All rights reserved.
//

import XCTest
@testable import BRSAddOnsExample

class BRSActivityIndicatorTests: XCTestCase {
  
    let activityIndicator = BRSActivityIndicator()
 
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    func testActivityType() {
        let activityType  = Activity_Type.BRSACTIVITYLARGE
        activityIndicator.setActivityType(type: activityType)
        XCTAssert(activityIndicator.activityType != nil)
    }
    
    func testActivityColor() {
        let activityColor = UIColor.red
        activityIndicator.activityColor = activityColor
        XCTAssert(activityIndicator.activityColor != nil)
        
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
