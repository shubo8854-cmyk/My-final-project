
class Validators {
  // Name: letters and spaces, 3-30 characters
  static final RegExp nameRegex =
      RegExp(r'^[a-zA-Z ]{3,30}$');

  // Email validation
  static final RegExp emailRegex =
      RegExp(r'^[\w.-]+@([\w-]+\.)+[\w-]{2,4}$');

  // Password: uppercase, lowercase, number, minimum 8 characters
  static final RegExp passwordRegex =
      RegExp(r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d).{8,}$');

  // Name validation
  static String? validateName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your name';
    }

    if (!nameRegex.hasMatch(value)) {
      return 'Name must be 3-30 letters';
    }

    return null;
  }

  // Email validation
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    }

    if (!emailRegex.hasMatch(value)) {
      return 'Enter a valid email address';
    }

    return null;
  }

  // Password validation
  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a password';
    }

    if (!passwordRegex.hasMatch(value)) {
      return 'Min 8 characters, uppercase, lowercase & number';
    }

    return null;
  }

  // Confirm password validation
  static String? validateConfirmPassword(
    String? value,
    String password,
  ) {
    if (value == null || value.isEmpty) {
      return 'Please confirm your password';
    }

    if (value != password) {
      return 'Passwords do not match';
    }

    return null;
  }
}
