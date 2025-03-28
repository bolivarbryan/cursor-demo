import XCTest
@testable import CalorieTracker

final class WaterIntakeTests: XCTestCase {
    func testWaterIntakeInitialization() {
        let amount = 250.0
        let date = Date()
        let waterIntake = WaterIntake(amount: amount, date: date)
        
        XCTAssertEqual(waterIntake.amount, amount)
        XCTAssertEqual(waterIntake.date, date)
        XCTAssertNotNil(waterIntake.id)
    }
    
    func testWaterIntakeValidation() {
        let validIntake = WaterIntake(amount: 250.0)
        XCTAssertTrue(validIntake.isValid())
        
        let zeroIntake = WaterIntake(amount: 0.0)
        XCTAssertFalse(zeroIntake.isValid())
        
        let negativeIntake = WaterIntake(amount: -100.0)
        XCTAssertFalse(negativeIntake.isValid())
        
        let tooLargeIntake = WaterIntake(amount: 1500.0)
        XCTAssertFalse(tooLargeIntake.isValid())
    }
    
    func testWaterIntakeDateHandling() {
        let specificDate = Date(timeIntervalSince1970: 1234567890)
        let waterIntake = WaterIntake(amount: 250.0, date: specificDate)
        
        XCTAssertEqual(waterIntake.date, specificDate)
    }
} 