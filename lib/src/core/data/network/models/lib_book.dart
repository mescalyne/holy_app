class LibBookNetworkDto {
  final int pk;
  final int author_id;
  final String partition;
  final String book_name;
  final String author_name;
  final String book_url;

  LibBookNetworkDto({
    required this.pk,
    required this.author_id,
    required this.partition,
    required this.book_name,
    required this.author_name,
    required this.book_url,
  });

  factory LibBookNetworkDto.fromMap(Map<String, dynamic> data) =>
      LibBookNetworkDto(
        pk: data['pk'],
        author_id: data['author_id'],
        author_name: data['author_name'],
        partition: data['partition'],
        book_name: data['book_name'],
        book_url: data['book_url'],
      );
}
