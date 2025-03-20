public class HelloWorld {
    
    // This method is testable
    public String getMessage() {
        return "Hello, World!,Sahith";
    }

    // Entry point
    public static void main(String[] args) {
        HelloWorld hw = new HelloWorld();
        System.out.println(hw.getMessage());
    }
}