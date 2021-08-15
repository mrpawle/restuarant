class Facilities {
  String? facilities;
  bool? values;

  Facilities({this.facilities, this.values});

  factory Facilities.fromJson(Map<String, dynamic> json) => Facilities(
        facilities: json['Facilities'] as String?,
        values: json['Values'] as bool?,
      );

  Map<String, dynamic> toJson() => {
        'Facilities': facilities,
        'Values': values,
      };

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Facilities &&
        other.facilities == facilities &&
        other.values == values;
  }

  @override
  int get hashCode => facilities.hashCode ^ values.hashCode;
}
