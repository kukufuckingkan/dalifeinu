class Name {
  String value;
  String language;

  Name({required this.value, required this.language});

  factory Name.fromJson(Map<String, dynamic> json) {
    return Name(
      value: json['value'],
      language: json['language'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'value': value,
      'language': language,
    };
  }
}