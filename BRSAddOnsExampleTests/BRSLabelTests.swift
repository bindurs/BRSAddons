//
//  BRSLabelTests.swift
//  BRSAddOnsExampleTests
//  MIT License
//
//  Copyright © 2018 bindurs
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.

import XCTest
@testable import BRSAddOnsExample

class BRSLabelTests: XCTestCase {
    
    let label = BRSLabel()
    let cornerRadius : CGFloat = 5.0
    let borderWidth : CGFloat = 2.0
    let borderColor  = UIColor.red
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        label.setLabelCornerRadius(labelCornerRadius: cornerRadius)
        label.setLabelBorderWidth(labelBorderWidth: borderWidth)
        label.setLabelBorderColor(labelBorderColor: borderColor)
    }
    
    func testCornerRadiusZero() {
        XCTAssert(label.cornerRadius != 0)
    }
    
    func testBorderWidthZero() {
        XCTAssert(label.borderWidth != 0)
    }
    
    func testBorderColorNil() {
        XCTAssert(label.borderColor != nil)
    }
    
    func testCornerRadius() {
        XCTAssert(label.cornerRadius == cornerRadius)
    }
    
    func testBorderWidth() {
        XCTAssert(label.borderWidth == borderWidth)
    }
    
    func testBorderColor() {
        XCTAssert(label.borderColor == borderColor)
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
