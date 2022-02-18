class LocalizationNetworkDto {
  final String? bg;
  final String? ro;
  final String? en;
  final String? uk;
  final String? sr;
  final String? ka;
  final String? ru;
  final String? el;

  LocalizationNetworkDto({
    required this.bg,
    required this.ro,
    required this.en,
    required this.uk,
    required this.sr,
    required this.ka,
    required this.ru,
    required this.el,
  });

  factory LocalizationNetworkDto.fromMap(Map<String, dynamic> data) =>
      LocalizationNetworkDto(
        bg: data['bg'],
        ro: data['ro'],
        en: data['en'],
        uk: data['uk'],
        sr: data['sr'],
        ka: data['ka'],
        ru: data['ru'],
        el: data['el'],
      );
}
