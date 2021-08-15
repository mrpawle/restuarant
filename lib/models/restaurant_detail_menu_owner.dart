class RestaurantDetailMenuOwner {
  String? uniqueid;
  String? discription;
  String? imageName;
  int? order;

  RestaurantDetailMenuOwner({
    this.uniqueid,
    this.discription,
    this.imageName,
    this.order,
  });

  factory RestaurantDetailMenuOwner.fromJson(Map<String, dynamic> json) =>
      RestaurantDetailMenuOwner(
        uniqueid: json['Uniqueid'] as String?,
        discription: json['Discription'] as String?,
        imageName: json['ImageName'] as String?,
        order: json['Order'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'Uniqueid': uniqueid,
        'Discription': discription,
        'ImageName': imageName,
        'Order': order,
      };

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RestaurantDetailMenuOwner &&
        other.uniqueid == uniqueid &&
        other.discription == discription &&
        other.imageName == imageName &&
        other.order == order;
  }

  @override
  int get hashCode =>
      uniqueid.hashCode ^
      discription.hashCode ^
      imageName.hashCode ^
      order.hashCode;
}
