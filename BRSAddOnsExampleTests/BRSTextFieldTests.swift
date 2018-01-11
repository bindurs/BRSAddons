//
//  BRSTextFieldTests.swift
//  BRSAddOnsExampleTests
//
//  Created by Bindu on 11/01/18.
//  Copyright © 2018 Bindu. All rights reserved.
//

import XCTest
@testable import BRSAddOnsExample

class BRSTextFieldTests: XCTestCase {
    
    let textfield = BRSTextField()
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    func testCornerRadius() {
        let cornerRadius : CGFloat = 5.0
        textfield.setTextFieldCornerRadius(textFieldCornerRadius: cornerRadius)
        XCTAssert(textfield.cornerRadius > 0)
    }
    
    func testBorderWidth() {
        let borderWidth : CGFloat = 2.0
        textfield.setTextFieldBorderWidth(textFieldBorderWidth:borderWidth)
        XCTAssert(textfield.borderWidth > 0)
    }
    
    func testBorderColor() {
        let borderColor  = UIColor.red
        textfield.setTextFieldBorderColor(textFieldBorderColor: borderColor)
        XCTAssert(textfield.borderColor != nil)
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
