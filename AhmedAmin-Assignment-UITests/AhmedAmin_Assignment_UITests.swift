//
//  AhmedAmin_AssignmentUITests.swift
//  AhmedAmin-AssignmentUITests
//
//  Created by Amin  on 7/3/21.
//  Copyright © 2021 AhmedAmin. All rights reserved.
//

import XCTest

class AhmedAmin_AssignmentUITests: XCTestCase {
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        
        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testExample() {
        // UI tests must launch the application that they test.
        
        let app = XCUIApplication()
        app.launch()
        
        let startButton = app.buttons["Click to start"]
        let numberOfTrips = app.staticTexts["numberOfTripsLabel"]
        
        // Check for the first Launch
        XCTAssertFalse(startButton.isSelected)
        
        // Tap to button
        startButton.tap()
        
        // After Select the button
        XCTAssertTrue(startButton.isEnabled)
        
        // Check is the number of trip label is visible
        XCTAssertFalse(numberOfTrips.accessibilityElementsHidden)
        
        
    }
    
    func testLaunchPerformance() {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTOSSignpostMetric.applicationLaunch]) {
                XCUIApplication().launch()
            }
        }
    }
}
