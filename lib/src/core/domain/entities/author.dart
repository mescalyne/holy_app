class AuthorDto {
  final int pk;
  final String authorName;
  final String biographyType;
  final String portrait;
  final String rank;
  final bool isPrayer;

  AuthorDto({
    required this.pk,
    required this.authorName,
    required this.biographyType,
    required this.portrait,
    required this.rank,
    required this.isPrayer,
  });

  @override
  String toString() {
    return '"AuthorDto: $pk, $authorName, $biographyType, $portrait, $rank, $isPrayer"';
  }
}
