String fixImageUrl(String? url) {
  if (url == null || url.isEmpty) return '';

  if (url.startsWith('http')) {
    if (url.contains('localhost')) {
      return url.replaceFirst(
        'localhost',
        '10.0.2.2', // Emulator
      );
    }
    return url;
  }
  return 'http://10.0.2.2/pharmcy_api/$url';
}
