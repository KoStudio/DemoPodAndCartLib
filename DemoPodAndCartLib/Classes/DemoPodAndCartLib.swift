//
//  DemoPodAndCartLib.swift
//  DemoPodAndCartLib
//
//  Created by huminghua on 2017/4/2.
//  Copyright © 2017年 huminghua. All rights reserved.
//

import Foundation

public struct DemoPodAndCartLib {
    public var cityCode: Int
    
    public init(code: Int){
        self.cityCode = code
    }
    
    public func getCityCode()->Int {
        return self.cityCode
    }
}
