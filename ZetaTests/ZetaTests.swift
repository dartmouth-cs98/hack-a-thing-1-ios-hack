//
//  ZetaTests.swift
//  ZetaTests
//
//  Created by Adam Rinehouse on 1/5/19.
//  Copyright © 2019 Adam Rinehouse. All rights reserved.
//

import XCTest
@testable import Zeta

class ZetaTests: XCTestCase {
    
    //MARK: Meal Class Tests
    
    // Confirm that the Meal initializer returns a Meal object when passed valid parameters
    func testMealInitializationSucceeds() {
        // Zero rating
        let zeroRatingMeal = Meal.init(name: "Zero", photo: nil, rating: 0)
        XCTAssertNotNil(zeroRatingMeal)
        
        // Highest positive rating
        let positiveRatingMeal = Meal.init(name: "Positive", photo: nil, rating: 0)
        XCTAssertNotNil(positiveRatingMeal)
    }
    
    // Confirm that the Meal initializer returns nil when passed a negative rating or empty name
    func testMealInitializationFails() {
        // Negative rating
        let negativeRatingMeal = Meal.init(name: "Negative", photo: nil, rating: -1)
        XCTAssertNil(negativeRatingMeal)
        
        // Rating exceeds maximum
        let largeRatingMeal = Meal.init(name: "Large", photo: nil, rating: 6)
        XCTAssertNil(largeRatingMeal)
        
        // Empty name
        let emptyNameMeal = Meal.init(name: "", photo: nil, rating: 0)
        XCTAssertNil(emptyNameMeal)
    }
}
