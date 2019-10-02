package com.packtpub.calculator;

import static org.junit.Assert.assertEquals;

import org.junit.Test;

import com.packtpub.calculator.service.Calculator;

public class CalculatorApplicationTests {

	private Calculator calculator = new Calculator();

    @Test
    public void testSum() {
         assertEquals(5, calculator.sum(2, 3));
    }

}
