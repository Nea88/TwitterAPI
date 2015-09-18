//
//  TwitterAPITests.swift
//  TwitterAPITests
//
//  Created by Shinichiro Aska on 9/19/15.
//  Copyright © 2015 Shinichiro Aska. All rights reserved.
//

import XCTest
@testable import TwitterAPI

class TwitterAPITests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testSerialize() {
        let client = TwitterAPI.client(consumerKey: "hoge", consumerSecret: "foo", accessToken: "bar", accessTokenSecret: "baz")
        XCTAssertEqual(client.serialize, "OAuth\thoge\tfoo\tbar\tbaz", "client.serialize")
        
        let clientCopy = TwitterAPI.client(serializedString: client.serialize)
        XCTAssertEqual(clientCopy.serialize, "OAuth\thoge\tfoo\tbar\tbaz", "client.serialize")
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }
    
}
