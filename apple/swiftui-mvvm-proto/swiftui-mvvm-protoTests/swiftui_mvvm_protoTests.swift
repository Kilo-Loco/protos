//
//  swiftui_mvvm_protoTests.swift
//  swiftui-mvvm-protoTests
//
//  Created by Kilo Loco on 12/22/20.
//

import XCTest
@testable import swiftui_mvvm_proto

class swiftui_mvvm_protoTests: XCTestCase {

    var sot: UsersView.ViewModel!
    
    override func setUpWithError() throws {
        sot = .init()
    }

    override func tearDownWithError() throws {
        sot = nil
    }
    
    func test_getUsers() throws {
        XCTAssertTrue(sot.users.isEmpty)
        
        sot.getUsers()
        
        XCTAssertEqual(sot.users.count, 3)
    }
}
