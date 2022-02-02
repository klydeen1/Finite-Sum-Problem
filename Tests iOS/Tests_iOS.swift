//
//  Tests_iOS.swift
//  Tests iOS
//
//  Created by Katelyn Lydeen on 2/1/22.
//

import XCTest
@testable import Finite_Sum_Problem

class Tests_iOS: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    func testSumInitialization() async {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let N = 5
            
        let mySum = FiniteSum()
        let _ = await mySum.initWithN(passedN: N)
            
        let s1 = mySum.s1
        let s2 = mySum.s2
        let s3 = mySum.s3
        XCTAssertEqual(s1, 0.263455988456, accuracy: 1.0E-5, "Was not equal to this resolution.")
        XCTAssertEqual(s2, 0.263455988456, accuracy: 1.0E-5, "Was not equal to this resolution.")
        XCTAssertEqual(s3, 0.263455988456, accuracy: 1.0E-5, "Was not equal to this resolution.")
    }
    
    func testCalculateS1() async {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let N = 5
        let mySum = FiniteSum()
        let s1 = await mySum.calculateS1(N: N)
        XCTAssertEqual(s1, 0.263455988456, accuracy: 1.0E-5, "Was not equal to this resolution.")
    }
    
    func testCalculateS2() async {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let N = 5
        let mySum = FiniteSum()
        let s2 = await mySum.calculateS2(N: N)
        XCTAssertEqual(s2, 0.263455988456, accuracy: 1.0E-5, "Was not equal to this resolution.")
    }
    
    func testCalculateS3() async {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let N = 5
        let mySum = FiniteSum()
        let s3 = await mySum.calculateS3(N: N)
        XCTAssertEqual(s3, 0.263455988456, accuracy: 1.0E-5, "Was not equal to this resolution.")
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
