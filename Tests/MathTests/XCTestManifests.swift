import XCTest

extension BitwiseOperationsTests {
    static let __allTests = [
        ("testCoundLeadingZeros64Bit", testCoundLeadingZeros64Bit),
        ("testCountLeadingZeros", testCountLeadingZeros),
        ("testCountTrailingZeros", testCountTrailingZeros),
        ("testCountTrailingZeros64Bit", testCountTrailingZeros64Bit),
    ]
}

extension CloserToTests {
    static let __allTests = [
        ("testCloserToEasy", testCloserToEasy),
        ("testCloserToEquiv", testCloserToEquiv),
    ]
}

extension EvenTests {
    static let __allTests = [
        ("testFloatEvenFalse", testFloatEvenFalse),
        ("testIntEvenFalse", testIntEvenFalse),
        ("testIntEvenTrue", testIntEvenTrue),
    ]
}

extension GreatestCommonDivisorTests {
    static let __allTests = [
        ("testIntAGreaterThanB", testIntAGreaterThanB),
        ("testIntALessThanB", testIntALessThanB),
    ]
}

extension IsDivisibleTests {
    static let __allTests = [
        ("testIntIsDivisibleByFalse", testIntIsDivisibleByFalse),
        ("testIntIsDivisibleByFalsePrime", testIntIsDivisibleByFalsePrime),
        ("testIntIsDivisibleByTrue", testIntIsDivisibleByTrue),
    ]
}

extension IsPowerOfTwoTests {
    static let __allTests = [
        ("testIntIsPowerOfTwo64Bit", testIntIsPowerOfTwo64Bit),
        ("testIntIsPowerOfTwoFalse", testIntIsPowerOfTwoFalse),
        ("testIntIsPowerOfTwoTrue", testIntIsPowerOfTwoTrue),
        ("testIntIsPowerOfTwoZero", testIntIsPowerOfTwoZero),
    ]
}

extension LeastCommonMultipleTests {
    static let __allTests = [
        ("testLeastCommonMultipleEqual", testLeastCommonMultipleEqual),
        ("testLeastCommonMultipleNotEqualAlreadySimplified", testLeastCommonMultipleNotEqualAlreadySimplified),
        ("testLeastCommonMultipleNotEqualNotSimplified", testLeastCommonMultipleNotEqualNotSimplified),
        ("testLeastCommonMultipleSequence", testLeastCommonMultipleSequence),
    ]
}

extension LinearRegressionTests {
    static let __allTests = [
        ("testFloatMultiplyLHSEmpty", testFloatMultiplyLHSEmpty),
        ("testFloatMultiplyOperatorNotEmpty", testFloatMultiplyOperatorNotEmpty),
        ("testFloatMultiplyRHSEmpty", testFloatMultiplyRHSEmpty),
        ("testIntegerMultiplyLHSEmpty", testIntegerMultiplyLHSEmpty),
        ("testIntMultiplyOperatorNotEmpty", testIntMultiplyOperatorNotEmpty),
        ("testIntMultiplyRHSEmpty", testIntMultiplyRHSEmpty),
        ("testLinearRegressionAfterEasy", testLinearRegressionAfterEasy),
        ("testLinearRegressionInsideEasy", testLinearRegressionInsideEasy),
        ("testSlope1", testSlope1),
        ("testSlopeHalf", testSlopeHalf),
        ("testSlopeMinus1", testSlopeMinus1),
        ("testSlopeMinusHalf", testSlopeMinusHalf),
    ]
}

extension MeanTests {
    static let __allTests = [
        ("testMeanEasy", testMeanEasy),
        ("testMeanFloat", testMeanFloat),
        ("testMeanHarder", testMeanHarder),
    ]
}

extension ModuloTests {
    static let __allTests = [
        ("testModFloatingPoint", testModFloatingPoint),
        ("testModFloatingPointNegative", testModFloatingPointNegative),
        ("testModInteger", testModInteger),
        ("testModIntegerNegative", testModIntegerNegative),
    ]
}

extension OddTests {
    static let __allTests = [
        ("testIntOddFalse", testIntOddFalse),
        ("testIntOddTrue", testIntOddTrue),
    ]
}

extension PowerGeneratorTests {
    static let __allTests = [
        ("testInt_1", testInt_1),
        ("testInt_3", testInt_3),
        ("testOvershoot", testOvershoot),
    ]
}

extension PowerSequenceTests {
    static let __allTests = [
        ("testFilter", testFilter),
        ("testNon2Base_3", testNon2Base_3),
        ("testNon2Base_7", testNon2Base_7),
        ("testOvershoot", testOvershoot),
        ("testPowerSequenceContains", testPowerSequenceContains),
        ("testPowerSequenceMapContains", testPowerSequenceMapContains),
    ]
}

extension PowerTests {
    static let __allTests = [
        ("testClosestPowerOf2", testClosestPowerOf2),
        ("testClosestPowerOf2_coeff11", testClosestPowerOf2_coeff11),
        ("testClosestPowerOf2_coeff2", testClosestPowerOf2_coeff2),
        ("testClosestPowerOf2_coeff3", testClosestPowerOf2_coeff3),
        ("testClosestPowerOf3_coeff17", testClosestPowerOf3_coeff17),
        ("testClosestPowerOfTwoUnder", testClosestPowerOfTwoUnder),
        ("testInBetween", testInBetween),
    ]
}

extension PrimeTests {
    static let __allTests = [
        ("testIntIsPrime0IsFalse", testIntIsPrime0IsFalse),
        ("testIntIsPrime1IsFalse", testIntIsPrime1IsFalse),
        ("testIntIsPrime2IsTrue", testIntIsPrime2IsTrue),
        ("testIntIsPrime3IsTrue", testIntIsPrime3IsTrue),
        ("testIntIsPrimeFalse", testIntIsPrimeFalse),
        ("testIntIsPrimeNegativeIsFalse", testIntIsPrimeNegativeIsFalse),
        ("testIntIsPrimeTrue", testIntIsPrimeTrue),
    ]
}

extension QuadraticTests {
    static let __allTests = [
        ("testIsEmptyDouble", testIsEmptyDouble),
        ("testIsEmptyFloat", testIsEmptyFloat),
        ("testQuadraticDouble", testQuadraticDouble),
        ("testQuadraticFloat", testQuadraticFloat),
    ]
}

extension RationalTests {
    static let __allTests = [
        ("testAddDifferentDenominators", testAddDifferentDenominators),
        ("testAddSameDenominator", testAddSameDenominator),
        ("testAddSameDenominatorAndAssign", testAddSameDenominatorAndAssign),
        ("testComparableHarder", testComparableHarder),
        ("testComparableSameDenominator", testComparableSameDenominator),
        ("testComparableSameNumerator", testComparableSameNumerator),
        ("testDivideDifferentDenominators", testDivideDifferentDenominators),
        ("testDivideDifferentDenominatorsAndAssign", testDivideDifferentDenominatorsAndAssign),
        ("testEqualsNotSimplified", testEqualsNotSimplified),
        ("testEqualsSame", testEqualsSame),
        ("testFloatValueDecimal", testFloatValueDecimal),
        ("testFloatValueNegative", testFloatValueNegative),
        ("testFloatValueOne", testFloatValueOne),
        ("testHashValueEqual", testHashValueEqual),
        ("testHashValueNotEqual", testHashValueNotEqual),
        ("testInit", testInit),
        ("testInverse", testInverse),
        ("testInverseNegative", testInverseNegative),
        ("testMultiplySameDenominators", testMultiplySameDenominators),
        ("testMultitplyDifferentDenominators", testMultitplyDifferentDenominators),
        ("testMultitplyDifferentDenominatorsAndAssign", testMultitplyDifferentDenominatorsAndAssign),
        ("testNotEqual", testNotEqual),
        ("testReciprocal", testReciprocal),
        ("testReduced", testReduced),
        ("testReducedDoubleNegative", testReducedDoubleNegative),
        ("testReducedNegative", testReducedNegative),
        ("testReducedNegativeDenominator", testReducedNegativeDenominator),
        ("testRespellWithDenominatorEqualToSelfValid", testRespellWithDenominatorEqualToSelfValid),
        ("testRespellWithDenominatorGreaterThanValid", testRespellWithDenominatorGreaterThanValid),
        ("testRespellWithDenominatorLessThanValid", testRespellWithDenominatorLessThanValid),
        ("testRespellWithNumeratorEqualToSelfValid", testRespellWithNumeratorEqualToSelfValid),
        ("testRespellWithNumeratorGreaterThanValid", testRespellWithNumeratorGreaterThanValid),
        ("testRespellWithNumeratorLessThanValid", testRespellWithNumeratorLessThanValid),
        ("testSubtractDifferentDenominators", testSubtractDifferentDenominators),
        ("testSubtractDifferentDenominatorsAndAssign", testSubtractDifferentDenominatorsAndAssign),
        ("testSubtractSameDenominator", testSubtractSameDenominator),
    ]
}

extension ScaleTests {
    static let __allTests = [
        ("testDoubleScaledLinearToExponential", testDoubleScaledLinearToExponential),
        ("testFloatEqualsSelfInEquivalentRanges", testFloatEqualsSelfInEquivalentRanges),
        ("testFloatScaled", testFloatScaled),
    ]
}

extension SequenceTypeTests {
    static let __allTests = [
        ("testClosestEmpty", testClosestEmpty),
        ("testClosestOver", testClosestOver),
        ("testClosestUnder", testClosestUnder),
        ("testFloatSum", testFloatSum),
        ("testFloatSumEmpty", testFloatSumEmpty),
        ("testGCDIntPair", testGCDIntPair),
        ("testIntSum", testIntSum),
        ("testIntSumEmpty", testIntSumEmpty),
    ]
}

#if !os(macOS)
public func __allTests() -> [XCTestCaseEntry] {
    return [
        testCase(BitwiseOperationsTests.__allTests),
        testCase(CloserToTests.__allTests),
        testCase(EvenTests.__allTests),
        testCase(GreatestCommonDivisorTests.__allTests),
        testCase(IsDivisibleTests.__allTests),
        testCase(IsPowerOfTwoTests.__allTests),
        testCase(LeastCommonMultipleTests.__allTests),
        testCase(LinearRegressionTests.__allTests),
        testCase(MeanTests.__allTests),
        testCase(ModuloTests.__allTests),
        testCase(OddTests.__allTests),
        testCase(PowerGeneratorTests.__allTests),
        testCase(PowerSequenceTests.__allTests),
        testCase(PowerTests.__allTests),
        testCase(PrimeTests.__allTests),
        testCase(QuadraticTests.__allTests),
        testCase(RationalTests.__allTests),
        testCase(ScaleTests.__allTests),
        testCase(SequenceTypeTests.__allTests),
    ]
}
#endif
