//
//  ChineseRemainderTheorem.swift
//  Math
//
//  Created by James Bean on 3/17/20.
//

/// - Returns: The Chinese Remainder Theorem supposes that given the integers n1...nk that are
///  pairwise co-prime, then for any sequence of integers a1...ak there exists an integer `x` that
///  solves the system of linear congruences.
public func chineseRemainderTheorem <S: Sequence, I: BinaryInteger> (_ a: S, _ n: S) -> I
    where S.Element == I
{
    let product = n.reduce(1,*)
    let modInvs: [I] = n.map { n in
        let p = product / n
        return p.modInv(n) * p
    }
    let sum = zip(modInvs,a).map(*).reduce(0,+)
    return sum % product
}

extension BinaryInteger {

    /// - Returns: The modular multiplicative inverse of `self`.
    public func modInv (_ mod: Self) -> Self {
        var (m, n) = (mod, self)
        var x: Self = 0
        var y: Self = 1
        while n != 0 {
            (x, y) = (y, x - (m / n) * y)
            (m, n) = (n, m % n)
        }
        while x < 0 {
            x += mod
        }
        return x
    }
}
