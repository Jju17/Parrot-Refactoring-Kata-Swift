import XCTest

class ParrotTests: XCTestCase {
    func testSpeedOfEuropeanParrotIsBaseSpeed() {
        let parrot = EuropeanParrot()
        XCTAssert(parrot.speed() == 12)
    }
    
    func testSpeedOfAfricanParrotWithOneCoconutIsSlow() {
        let parrot = AfricanParrot(numberOfCoconuts: 1)
        XCTAssert(parrot.speed() == 3.0)
    }
    
    func testAfricanParrotWithTwoCoconutsCantFly() {
        let parrot = AfricanParrot(numberOfCoconuts: 2)
        XCTAssert(parrot.speed() == 0)
    }
    
    func testSpeedOfAfricanParrotWithNoCoconutsIsBaseSpeed() {
        let parrot = AfricanParrot()
        XCTAssert(parrot.speed() == 12)
    }
    
    func testNorwegianBlueParrotWhenNailedCantFly() {
        let parrot = NorwegianBlueParrot(voltage: 0, isNailed: true)
        XCTAssert(parrot.speed() == 0)
    }
    
    func testSpeedNorwegianBlueParrotNotNailedIsFasterWithGreaterThanOneVoltage() {
        let parrot = NorwegianBlueParrot(voltage: 1.5, isNailed: false)
        XCTAssert(parrot.speed() == 18.0)
    }
    
    func testSpeedNorwegianBlueParrotNotNailedIsEvenFasterWithHigherVoltage() {
        let parrot = NorwegianBlueParrot(voltage: 2, isNailed: false);
        XCTAssert(parrot.speed() == 24)
    }
    
    func testSpeedNorwegianBlueParrotNotNailedFliesUpToMaxSpeed() {
        let parrot = NorwegianBlueParrot(voltage: 4, isNailed: false);
        XCTAssert(parrot.speed() == 24)
    }
}
