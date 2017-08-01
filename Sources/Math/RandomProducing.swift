//
//  RandomProducing.swift
//  Math
//
//  Created by James Bean on 12/1/16.
//  Copyright © 2016 James Bean. All rights reserved.
//

import Darwin

public protocol RandomProducing {

    static func random(min: Self, max: Self) -> Self

    // TODO: Gaussian random
}

extension Int: RandomProducing {

    public static func random(min: Int = 0, max: Int = 1) -> Int {
        let (min, max) = ordered(min, max)
        let range = max - min
        return Int(arc4random_uniform(UInt32(range))) + min
    }
}

extension Float: RandomProducing {

    public static func random(min: Float = 0.0, max: Float = 1.0) -> Float {
        let (min, max) = ordered(min, max)
        let range = max - min
        return Float(arc4random_uniform(UInt32(range))) + min
    }
}

extension Double: RandomProducing {

    public static func random(min: Double = 0, max: Double = 1.0) -> Double {
        let (min, max) = ordered(min, max)
        let range = max - min
        return Double(arc4random_uniform(UInt32(range))) + min
    }
}
