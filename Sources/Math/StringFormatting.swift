//
//  StringFormatting.swift
//  ArithmeticTools
//
//  Created by James Bean on 12/1/16.
//  Copyright © 2016 James Bean. All rights reserved.
//

import Foundation

extension Int {

    /// - returns: `String` with the given amount of digits.
    public func formatted(digits: Int = 0) -> String {
        let format = "%0\(digits)ld"
        return String(format: format, self)
    }
}

extension Float {

    /// - returns: `String` with the given amount of digits.
    public func formatted(digits: Int = 0) -> String {
        return String(format: "%.0\(digits)f", self)
    }
}

extension Double {

    /// - returns: `String` with the given amount of digits.
    public func formatted(digits: Int = 0) -> String {
        return String(format: "%.0\(digits)f", self)
    }
}
