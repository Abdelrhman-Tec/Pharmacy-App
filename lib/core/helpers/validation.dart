class Validation {
  Validation._();

  // ===================== Email =====================
  static String? email(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Email is required';
    }

    final emailRegex = RegExp(r"^[\w-.]+@([\w-]+\.)+[\w-]{2,4}$");

    if (!emailRegex.hasMatch(value.trim())) {
      return 'Enter a valid email address';
    }

    return null;
  }

  // ===================== Password =====================
  static String? password(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }

    if (value.length < 8) {
      return 'Password must be at least 8 characters';
    }

    if (!RegExp(r'[A-Z]').hasMatch(value)) {
      return 'Password must contain at least one uppercase letter';
    }

    if (!RegExp(r'[a-z]').hasMatch(value)) {
      return 'Password must contain at least one lowercase letter';
    }

    if (!RegExp(r'\d').hasMatch(value)) {
      return 'Password must contain at least one number';
    }

    if (!RegExp(r'[!@#$&*~]').hasMatch(value)) {
      return 'Password must contain at least one special character';
    }

    return null;
  }

  // ===================== Confirm Password =====================
  static String? confirmPassword(String? value, String password) {
    if (value == null || value.isEmpty) {
      return 'Confirm password is required';
    }

    if (value != password) {
      return 'Passwords do not match';
    }

    return null;
  }

  // ===================== Name =====================
  static String? name(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Name is required';
    }

    if (value.trim().length < 3) {
      return 'Name must be at least 3 characters';
    }

    return null;
  }

  // ===================== Phone (with country code) =====================
  static String? phone({required String? phone}) {
    if (phone == null || phone.trim().isEmpty) {
      return 'Phone number is required';
    }
    return null;
  }

  // ===================== Numbers Only =====================
  static String? numbersOnly(String? value, {int? length}) {
    if (value == null || value.isEmpty) {
      return 'This field is required';
    }

    if (!RegExp(r'^\d+$').hasMatch(value)) {
      return 'Only numbers are allowed';
    }

    if (length != null && value.length != length) {
      return 'Must be $length digits';
    }

    return null;
  }

  // ===================== Required =====================
  static String? requiredField(String? value, {String name = 'This field'}) {
    if (value == null || value.trim().isEmpty) {
      return '$name is required';
    }
    return null;
  }
}
