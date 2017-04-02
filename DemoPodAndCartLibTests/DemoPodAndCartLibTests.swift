//
//  DemoPodAndCartLibTests.swift
//  DemoPodAndCartLibTests
//
//  Created by huminghua on 2017/4/2.
//  Copyright © 2017年 huminghua. All rights reserved.
//

import XCTest
@testable import DemoPodAndCartLib

class DemoPodAndCartLibTests: XCTestCase {
    
    func testDemoStruct() {
        let d = DemoPodAndCartLib(code: 12)
        XCTAssertEqual(d.getCityCode(), 12)
    }
    
}
