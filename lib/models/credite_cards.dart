class CrediteCards {
  String? crediteCardsImage;
  String? crediteCardName;

  CrediteCards({this.crediteCardsImage, this.crediteCardName});

  factory CrediteCards.fromJson(Map<String, dynamic> json) => CrediteCards(
        crediteCardsImage: json['CrediteCardsImage'] as String?,
        crediteCardName: json['CrediteCardName'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'CrediteCardsImage': crediteCardsImage,
        'CrediteCardName': crediteCardName,
      };

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CrediteCards &&
        other.crediteCardsImage == crediteCardsImage &&
        other.crediteCardName == crediteCardName;
  }

  @override
  int get hashCode => crediteCardsImage.hashCode ^ crediteCardName.hashCode;
}
