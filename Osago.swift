//
//  Osago.swift
//  Program2Lesson1Krestinin
//
//  Created by Алексей Крестинин on 01.03.17.
//  Copyright © 2017 Alexey Krestinin. All rights reserved.
//

import Foundation


struct Calculate {
    
    var power:Double
    var age:Double
//    var powerPrecision:Double
//    var agePrecision:Double
    var baseSum:Double
    var cityPrecision:Double
    var expirience:Int
    
    func agePrecision () -> Double {
        switch (age,expirience) {
        case (18...22,0...3):
            return 1.8
        case (22...120,0...3):
            return 1.7
        case (18...22,3...100):
            return 1.6
        case (22...120,3...100):
            return 1.0
        default:
            return 0
        }
    }
    
    func powerPrecision () -> Double {
        switch power {
        case 49...50:
            return 0.6
        case 51...70:
            return 1.0
        case 71...100:
            return 1.1
        case 101...120:
            return 1.2
        case 121...150:
            return 1.4
        case 151...300:
            return 1.6
        default:
            return 0
        }
   
    }

    func osagoPrice () -> Double {
        let aP:Double = agePrecision()
        let pP:Double = powerPrecision()
        return (baseSum * cityPrecision * aP * pP)
    }
    
}
