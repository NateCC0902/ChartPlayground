//
//  ChartPlaygroundTests.swift
//  ChartPlaygroundTests
//
//  Created by Cc C on 2022/7/27.
//

import XCTest
@testable import ChartPlayground

class ChartPlaygroundTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        super.setUp()

    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()

    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
        let target = [ -30,-99,-32,10,22.828,12,32,100,332,99,88,109,33,77,0,1,32,99,200]
        var myClass = ChartDataStorage(target)
        
        XCTAssert(10 == 10)
        for i in stride(from: 0, through: target.count-1, by: +1){
            XCTAssert(target[i] == myClass.elements[i])
        }
        myClass.elements[0] = 789
        XCTAssert(target[0] != myClass.elements[0]) //true means its deep copy
        
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
