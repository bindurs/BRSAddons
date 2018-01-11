//
//  BRSLabelTests.swift
//  BRSAddOnsExampleTests
//
//  Created by Bindu on 11/01/18.
//  Copyright © 2018 Bindu. All rights reserved.
//

import XCTest
@testable import BRSAddOnsExample

class BRSLabelTests: XCTestCase {
    
    let label = BRSLabel()
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    func testCornerRadius() {
        let cornerRadius : CGFloat = 5.0
        label.setLabelCornerRadius(labelCornerRadius: cornerRadius)
        XCTAssert(label.cornerRadius > 0)
    }
    
    func testBorderWidth() {
        let borderWidth : CGFloat = 2.0
        label.setLabelBorderWidth(labelBorderWidth: borderWidth)
        XCTAssert(label.borderWidth > 0)
        
    }
    
    func testBorderColor() {
        let borderColor  = UIColor.red
        label.setLabelBorderColor(labelBorderColor: borderColor)
        XCTAssert(label.borderColor != nil)
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
