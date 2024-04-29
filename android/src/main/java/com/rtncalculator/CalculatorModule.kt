package com.rtncalculator

import com.facebook.react.bridge.Promise
import com.facebook.react.bridge.ReactApplicationContext
import com.rtncalculator.NativeRtnCalculatorSpec

class CalculatorModule(reactContext: ReactApplicationContext) : NativeRtnCalculatorSpec(reactContext) {
  override fun getName() = NAME

  override fun add(a: Double, b: Double, promise: Promise) {
    promise.resolve(a + b)
  }

  companion object {
    const val NAME = "RTNCalculator"
  }
}