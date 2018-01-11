//
//  BRSViewTests.swift
//  BRSAddOnsExampleTests
//
//  Created by Bindu on 11/01/18.
//  Copyright © 2018 Bindu. All rights reserved.
//

import XCTest
@testable import BRSAddOnsExample

class BRSViewTests: XCTestCase {
    
    let bView = BRSView()
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    func testCornerRadius() {
        let cornerRadius : CGFloat = 5.0
        bView.setViewCornerRadius(viewCornerRadius: cornerRadius)
        XCTAssert(bView.cornerRadius > 0)
    }
    
    func testBorderWidth() {
        let borderWidth : CGFloat = 2.0
        bView.setViewBorderWidth(viewBorderWidth: borderWidth)
        XCTAssert(bView.borderWidth > 0)
        
    }
    
    func testBorderColor() {
        let borderColor  = UIColor.red
        bView.setViewBorderColor(viewBorderColor: borderColor)
        XCTAssert(bView.borderColor != nil)
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