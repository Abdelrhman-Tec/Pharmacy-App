/// Validation utility class for form inputs
class Validators {
  Validators._();

  /// Validate email address
  static String? email(String? value) {
    if (value == null || value.isEmpty) {
      return 'البريد الإلكتروني مطلوب';
    }

    final emailRegex = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    );

    if (!emailRegex.hasMatch(value)) {
      return 'البريد الإلكتروني غير صحيح';
    }

    return null;
  }

  /// Validate password
  static String? password(String? value, {int minLength = 6}) {
    if (value == null || value.isEmpty) {
      return 'كلمة المرور مطلوبة';
    }

    if (value.length < minLength) {
      return 'كلمة المرور يجب أن تكون $minLength أحرف على الأقل';
    }

    return null;
  }

  /// Validate password confirmation
  static String? confirmPassword(String? value, String? password) {
    if (value == null || value.isEmpty) {
      return 'تأكيد كلمة المرور مطلوب';
    }

    if (value != password) {
      return 'كلمة المرور غير متطابقة';
    }

    return null;
  }

  /// Validate required field
  static String? required(String? value, {String? fieldName}) {
    if (value == null || value.isEmpty) {
      return '${fieldName ?? 'هذا الحقل'} مطلوب';
    }
    return null;
  }

  /// Validate phone number
  static String? phone(String? value) {
    if (value == null || value.isEmpty) {
      return 'رقم الهاتف مطلوب';
    }

    // Egyptian phone number format
    final phoneRegex = RegExp(r'^(010|011|012|015)[0-9]{8}$');

    if (!phoneRegex.hasMatch(value)) {
      return 'رقم الهاتف غير صحيح';
    }

    return null;
  }

  /// Validate minimum length
  static String? minLength(String? value, int min, {String? fieldName}) {
    if (value == null || value.isEmpty) {
      return '${fieldName ?? 'هذا الحقل'} مطلوب';
    }

    if (value.length < min) {
      return '${fieldName ?? 'هذا الحقل'} يجب أن يكون $min أحرف على الأقل';
    }

    return null;
  }

  /// Validate maximum length
  static String? maxLength(String? value, int max, {String? fieldName}) {
    if (value != null && value.length > max) {
      return '${fieldName ?? 'هذا الحقل'} يجب ألا يتجاوز $max حرف';
    }

    return null;
  }

  /// Validate number
  static String? number(String? value, {String? fieldName}) {
    if (value == null || value.isEmpty) {
      return '${fieldName ?? 'هذا الحقل'} مطلوب';
    }

    if (double.tryParse(value) == null) {
      return '${fieldName ?? 'هذا الحقل'} يجب أن يكون رقم';
    }

    return null;
  }

  /// Validate positive number
  static String? positiveNumber(String? value, {String? fieldName}) {
    final numberError = number(value, fieldName: fieldName);
    if (numberError != null) return numberError;

    if (double.parse(value!) <= 0) {
      return '${fieldName ?? 'هذا الحقل'} يجب أن يكون رقم موجب';
    }

    return null;
  }

  /// Validate URL
  static String? url(String? value) {
    if (value == null || value.isEmpty) {
      return 'الرابط مطلوب';
    }

    final urlRegex = RegExp(
      r'^https?:\/\/(www\.)?[-a-zA-Z0-9@:%._\+~#=]{1,256}\.[a-zA-Z0-9()]{1,6}\b([-a-zA-Z0-9()@:%_\+.~#?&//=]*)$',
    );

    if (!urlRegex.hasMatch(value)) {
      return 'الرابط غير صحيح';
    }

    return null;
  }
}
