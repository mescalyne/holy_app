class LibBookDto {
  final int pk;
  final int authorId;
  final String partition;
  final String bookName;
  final String authorName;
  final String bookUrl;

  LibBookDto({
    required this.pk,
    required this.authorId,
    required this.partition,
    required this.bookName,
    required this.authorName,
    required this.bookUrl,
  });
}
