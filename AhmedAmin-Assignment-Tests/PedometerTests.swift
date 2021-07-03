//
//  PedometerTests.swift
//  AhmedAmin-AssignmentTests
//
//  Created by Amin  on 7/3/21.
//  Copyright © 2021 AhmedAmin. All rights reserved.
//

import XCTest
import CoreMotion
@testable import AhmedAmin_Assignment

class PedometerTests: XCTestCase {
    
    var sut: Pedometer!
    
    override func setUp() {
        
    }
    
    override func tearDown() {
        
        sut = nil
    }
    
    func testIfStartDateIsGreaterThanEndDate() {
        
        // Given
        let data = CMPedometerData()
        let startDate = Date().advanced(by: TimeInterval(400))
        let endDate = Date()
        
        // When
        sut = Pedometer(startDate: startDate, endDate: endDate)
        sut.handlesSteps(data)
        
        // Then
        XCTAssertTrue(TripCashing.trips.isEmpty)
    }
    
    
    func testIfStartDateIslessThanEndDateWithFiveMinutes() {
        
        // Given
        let data = CMPedometerData()
        let startDate = Date()
        let endDate = Date().advanced(by: TimeInterval(400))
        
        // When
        sut = Pedometer(startDate: startDate, endDate: endDate)
        sut.handlesSteps(data)
        
        // Then
        XCTAssertFalse(TripCashing.trips.isEmpty)
    }
    
    func testifStartDateIsEqualEndDate() {
        
        // Given
        let data = CMPedometerData()
        let startDate = Date()
        let endDate = Date()
        
        // When
        sut = Pedometer(startDate: startDate, endDate: endDate)
        sut.handlesSteps(data)
        
        // Then
        XCTAssertFalse(TripCashing.trips.isEmpty)
    }
    
}

