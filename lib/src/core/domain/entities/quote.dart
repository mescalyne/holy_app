class QuoteDto {
  final String? tags;
  final String authorName;
  final int authorId;
  final String quoteText;
  final DateTime date;

  QuoteDto({
    required this.authorName,
    required this.authorId,
    required this.quoteText,
    required this.date,
    this.tags,
  });
}
