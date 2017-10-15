//
//  MCDemoUITests.swift
//  MCDemoUITests
//
//  Created by Dan Lange on 10/11/17.
//  Copyright © 2017 Dan Lange. All rights reserved.
//

import XCTest
import MobileCenter
import MobileCoreServices
import VSMobileCenterExtensions


class MCDemoUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        let app = MCLaunch.launch(XCUIApplication())

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
        // Are we on the correct view
        let exists = NSPredicate(format: "exists == true")
        let choic1Button = app?.buttons["Choice 1"]
        expectation(for: exists, evaluatedWith: choic1Button as Any, handler: nil)
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testExample() {
        let app = MCLaunch.launch(XCUIApplication())
        let exists = NSPredicate(format: "exists == true")
        
        MCLabel.labelStep("Starting View")
        // nav to the choice 1 view
        let choic1Button = app?.buttons["Choice 1"]
        choic1Button?.tap()
        
        MCLabel.labelStep("Selected View")
        // did transition to a correct view
        let accountInfoPageTitle = app?.staticTexts["You have choosen View 1"]
        expectation(for: exists, evaluatedWith: accountInfoPageTitle as Any, handler: nil)
        waitForExpectations(timeout: 5, handler: nil)
        
        // exit the view
      
        app?.buttons["Done"].tap()
        let mainPageText = app?.buttons["Choice 1"]
        expectation(for: exists, evaluatedWith: mainPageText as Any, handler: nil)
        waitForExpectations(timeout: 5, handler: nil)
        MCLabel.labelStep("Back to main view")
    }

    
}
