//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by Jason Fevang on 10/26/18.
//  Copyright © 2018 Jason Fevang. All rights reserved.
//

import XCTest
@testable import FoodTracker

class FoodTrackerTests: XCTestCase {
    //MARK: Meal Class Tests
    
    // Confirm that the Meal initializer returns a Meal object when passed valid parameters.
    func testMealInitializationSucceeds() {
        // Zero rating
        let zeroRatingMeal = Meal.init(name: "Zero", photo: nil, rating: 0)
        XCTAssertNotNil(zeroRatingMeal)
        
        // Highest positive rating
        let positiveRatingMeal = Meal.init(name: "Positive", photo: nil, rating: 5)
        XCTAssertNotNil(positiveRatingMeal)
    }
    
    // Confirm that the Meal initialier returns nil when passed a negative rating or an empty name.
    func testMealInitializationFails() {
        let negativeRatingMeal = Meal.init(name: "negRating", photo: nil, rating: -1)
        XCTAssertNil(negativeRatingMeal)
        
        let noNameMeal = Meal.init(name: "", photo: nil, rating: 1)
        XCTAssertNil(noNameMeal)
        
        // Rating exceeds maximum
        let largeRatingMeal = Meal.init(name: "Large", photo: nil, rating: 6)
        XCTAssertNil(largeRatingMeal)
    }

}
