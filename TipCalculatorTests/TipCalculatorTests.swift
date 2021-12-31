//
//  TipCalculatorTests.swift
//  TipCalculatorTests
//
//  Created by Paula R on 12/30/21.
//

import XCTest
@testable import TipCalculator
import SwiftUI

class TipCalculatorTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }
    
    func testCalculatorWithGoodValues() throws {
        var calculator = TipCalculator(billAmount: 100, tipPercent: 10)
        XCTAssert(calculator.tipAmount == 10)
        XCTAssert(calculator.billTotal == 110)
        
        calculator = TipCalculator(billAmount: 10, tipPercent: 10)
        XCTAssert(calculator.tipAmount == 1)
        XCTAssert(calculator.billTotal == 11)

        calculator = TipCalculator(billAmount: 10, tipPercent: 10)
        XCTAssert(calculator.tipAmount == 1, "Incorrect tip amount")
        XCTAssert(calculator.billTotal == 11, "Incorrect bill total")

    }

    func testCalculatorWithBadValues() throws {
        var calculator = TipCalculator(billAmount: 0, tipPercent: 0)
        XCTAssert(calculator.tipAmount == 0.0, "Incorrect tip amount")
        XCTAssert(calculator.billTotal == 0, "Incorrect bill total")

        calculator = TipCalculator(billAmount: 0, tipPercent: 67.0)
        XCTAssert(calculator.tipAmount == 0.0, "Incorrect tip amount")
        XCTAssert(calculator.billTotal == 0, "Incorrect bill total")

        calculator = TipCalculator(billAmount: -230, tipPercent: 0)
        XCTAssert(calculator.tipAmount == 0.0, "Incorrect tip amount")
        XCTAssert(calculator.billTotal == -230, "Incorrect bill total")
    }
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
