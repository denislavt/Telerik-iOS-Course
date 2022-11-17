//
//  DataTests.swift
//  UnitTestingBasicTests
//
//  Created by Denislav Todorov on 18.11.22.
//

import XCTest

class MockStringsDataDelegate: StringsDataDelegate {
    var isCalled = false
    
    func didReceiveData(data: Any) {
        isCalled = true
    }
}


final class DataTests: XCTestCase {

    override func setUpWithError() throws {
        super.setUp()
    }

    override func tearDownWithError() throws {
        super.tearDown()
    }

    func testGetAll_WhenNone_shouldReturnEmptyArray() {
        var data = StringsData()
        var delegate = MockStringsDataDelegate()
        data.delegate = delegate
        
        data.getAll()
        
        XCTAssert(delegate.isCalled)
    }

}
