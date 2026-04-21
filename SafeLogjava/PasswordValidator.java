import java.util.Scanner;

public class PasswordValidator {

    public static boolean validatePassword(String password) {

        boolean hasUppercase = false;
        boolean hasDigit = false;

        if (password.length() < 8) {
            System.out.println("Too short (minimum 8 characters required)");
            return false;
        }

        for (int i = 0; i < password.length(); i++) {
            char ch = password.charAt(i);

            if (Character.isUpperCase(ch)) {
                hasUppercase = true;
            }

            if (Character.isDigit(ch)) {
                hasDigit = true;
            }
        }

        if (!hasUppercase) {
            System.out.println("Missing an uppercase letter");
        }

        if (!hasDigit) {
            System.out.println("Missing a digit");
        }

        return hasUppercase && hasDigit;
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        String password;

        while (true) {
            System.out.print("Enter password: ");
            password = sc.nextLine();

            if (validatePassword(password)) {
                System.out.println("Password is valid");
                break;
            } else {
                System.out.println("Try again.\n");
            }
        }

        sc.close();
    }
}