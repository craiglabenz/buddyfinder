String slugify(String text) {
  return text
      .toLowerCase()
      .trim()
      .replaceAll(RegExp(r'[^a-z0-9\s-]'), '') // Remove invalid chars
      .replaceAll(RegExp(r'\s+'), '-'); // Replace spaces with -
}
