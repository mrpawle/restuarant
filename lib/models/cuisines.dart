class Cuisines {
  String? cuisine;
  int? cuisineId;

  Cuisines({this.cuisine, this.cuisineId});

  factory Cuisines.fromJson(Map<String, dynamic> json) => Cuisines(
        cuisine: json['Cuisine'] as String?,
        cuisineId: json['CuisineId'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'Cuisine': cuisine,
        'CuisineId': cuisineId,
      };

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Cuisines &&
        other.cuisine == cuisine &&
        other.cuisineId == cuisineId;
  }

  @override
  int get hashCode => cuisine.hashCode ^ cuisineId.hashCode;
}
