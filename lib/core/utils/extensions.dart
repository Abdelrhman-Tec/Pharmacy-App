/// String extension methods
extension StringExtension on String {
  /// Check if string is email
  bool get isEmail {
    final emailRegex = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    );
    return emailRegex.hasMatch(this);
  }

  /// Check if string is phone number
  bool get isPhone {
    final phoneRegex = RegExp(r'^(010|011|012|015)[0-9]{8}$');
    return phoneRegex.hasMatch(this);
  }

  /// Check if string is URL
  bool get isUrl {
    final urlRegex = RegExp(
      r'^https?:\/\/(www\.)?[-a-zA-Z0-9@:%._\+~#=]{1,256}\.[a-zA-Z0-9()]{1,6}\b([-a-zA-Z0-9()@:%_\+.~#?&//=]*)$',
    );
    return urlRegex.hasMatch(this);
  }

  /// Capitalize first letter
  String get capitalize {
    if (isEmpty) return this;
    return this[0].toUpperCase() + substring(1).toLowerCase();
  }

  /// Capitalize each word
  String get capitalizeWords {
    return split(' ').map((word) => word.capitalize).join(' ');
  }

  /// Remove all whitespace
  String get removeWhitespace {
    return replaceAll(RegExp(r'\s+'), '');
  }

  /// Check if string is numeric
  bool get isNumeric {
    return double.tryParse(this) != null;
  }

  /// Reverse string
  String get reverse {
    return split('').reversed.join('');
  }

  /// Count words
  int get wordCount {
    return trim().split(RegExp(r'\s+')).length;
  }
}

/// List extension methods
extension ListExtension<T> on List<T> {
  /// Check if list is null or empty
  bool get isNullOrEmpty => isEmpty;

  /// Get first element or null
  T? get firstOrNull => isEmpty ? null : first;

  /// Get last element or null
  T? get lastOrNull => isEmpty ? null : last;

  /// Chunk list into smaller lists
  List<List<T>> chunk(int size) {
    final chunks = <List<T>>[];
    for (var i = 0; i < length; i += size) {
      chunks.add(sublist(i, i + size > length ? length : i + size));
    }
    return chunks;
  }
}

/// DateTime extension methods
extension DateTimeExtension on DateTime {
  /// Check if date is today
  bool get isToday {
    final now = DateTime.now();
    return year == now.year && month == now.month && day == now.day;
  }

  /// Check if date is yesterday
  bool get isYesterday {
    final yesterday = DateTime.now().subtract(Duration(days: 1));
    return year == yesterday.year &&
        month == yesterday.month &&
        day == yesterday.day;
  }

  /// Check if date is tomorrow
  bool get isTomorrow {
    final tomorrow = DateTime.now().add(Duration(days: 1));
    return year == tomorrow.year &&
        month == tomorrow.month &&
        day == tomorrow.day;
  }

  /// Get start of day
  DateTime get startOfDay {
    return DateTime(year, month, day);
  }

  /// Get end of day
  DateTime get endOfDay {
    return DateTime(year, month, day, 23, 59, 59);
  }

  /// Add days
  DateTime addDays(int days) {
    return add(Duration(days: days));
  }

  /// Subtract days
  DateTime subtractDays(int days) {
    return subtract(Duration(days: days));
  }

  /// Check if date is in the past
  bool get isPast {
    return isBefore(DateTime.now());
  }

  /// Check if date is in the future
  bool get isFuture {
    return isAfter(DateTime.now());
  }
}

/// int extension methods
extension IntExtension on int {
  /// Check if number is even
  bool get isEven => this % 2 == 0;

  /// Check if number is odd
  bool get isOdd => this % 2 != 0;

  /// Check if number is positive
  bool get isPositive => this > 0;

  /// Check if number is negative
  bool get isNegative => this < 0;

  /// Convert to duration in days
  Duration get days => Duration(days: this);

  /// Convert to duration in hours
  Duration get hours => Duration(hours: this);

  /// Convert to duration in minutes
  Duration get minutes => Duration(minutes: this);

  /// Convert to duration in seconds
  Duration get seconds => Duration(seconds: this);
}

/// double extension methods
extension DoubleExtension on double {
  /// Round to decimal places
  double roundToDecimal(int places) {
    final mod = 10.0 * places;
    return (this * mod).round() / mod;
  }

  /// Check if number is positive
  bool get isPositive => this > 0;

  /// Check if number is negative
  bool get isNegative => this < 0;

  /// Check if number is zero
  bool get isZero => this == 0;
}
