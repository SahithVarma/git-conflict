package com.example;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.assertEquals;

public class HelloWorldTest {
    @Test
    public void testGetGreeting() {
        HelloWorld hw = new HelloWorld();
        String result = hw.getGreeting();
        assertEquals("Hello, World!, Sahith", result);
    }
}


