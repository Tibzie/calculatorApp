public class Calculations {
    public static void main(String[] args) {
        System.out.println("The result of this addition is: " + addFunction(3, 5) + "\n");
        System.out.println("The result of this substraction is: " + subFunction(3, 5) + "\n");
        System.out.println("The result of this multiplication is: " + multFunction(3, 5) + "\n");
        System.out.println("The result of this division is: " + divFunction(3, 5) + "\n");
    }

    public static int addFunction(int x, int y) {
        int sum = x + y;
        return sum;
    }
    public static int subFunction(int x, int y) {
        int sub = x - y;
        return sub;
    }
    public static int multFunction(int x, int y) {
        int mult = x * y;
        return mult;
    }
    public static int divFunction(int x, int y) {
        int div = x / y;
        return div;
    }
}
