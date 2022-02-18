class AuthorNetworkDto {
  int pk;
  String author_name;
  String biography_type;
  String portrait;
  String rank;
  bool is_prayer;

  AuthorNetworkDto({
    required this.pk,
    required this.author_name,
    required this.biography_type,
    required this.portrait,
    required this.rank,
    required this.is_prayer,
  });

  factory AuthorNetworkDto.fromMap(Map<String, dynamic> data) =>
      AuthorNetworkDto(
        pk: data['pk'],
        author_name: data['author_name'],
        biography_type: data['biography_type'],
        portrait: data['portrait'],
        rank: data['rank'],
        is_prayer: data['is_prayer'],
      );

  @override
  String toString() {
    return '"AuthorNetworkDto: $pk, $author_name"';
  }
}
