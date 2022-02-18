class QuoteNetworkDto {
  String pk;
  String author_name;
  int author_id;
  String quote_text;
  String? tags;

  QuoteNetworkDto({
    required this.pk,
    required this.author_name,
    required this.author_id,
    required this.quote_text,
    this.tags,
  });

  factory QuoteNetworkDto.fromMap(Map<String, dynamic> data) => QuoteNetworkDto(
        pk: data['pk'],
        author_name: data['author_name'],
        author_id: data['author_id'],
        quote_text: data['quote_text'],
        tags: data['tags'],
      );
}
