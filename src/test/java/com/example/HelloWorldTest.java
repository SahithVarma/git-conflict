package com.example;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.assertEquals;

public class HelloWorldTest {
    @Test
    void testGreet() {
        HelloWorld hw = new HelloWorld();
        assertEquals("Hello, World!,Sahith", hw.greet());
    }
}



