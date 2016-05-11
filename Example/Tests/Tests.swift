import UIKit
import XCTest
import JJJUtils

class Tests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    func testLoadImageForTest() {
        
        let llama = JJJUtils.loadImageForTest(self.dynamicType, imageName: "llama.jpg")
        XCTAssertNotNil(llama, "Expected to see a glorious llama :-(")
        
    }
    
    func testRandomSort() {
        
        let nums = [1, 2, 3, 4, 5, 6, 7, 8, 9]
        
        for _ in 0 ..< 10 {
            
            let shuffledNums = JJJUtils.randomSort(nums)
            
            if shuffledNums != nums {
                return
            }
            
        }
        
        XCTFail("nums should have been randomly sorted at least once, statistically speaking")
        
    }
    
}
