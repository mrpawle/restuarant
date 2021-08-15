class RestaurantDetailMenuUser {
  String? uniqueid;
  String? discription;
  String? imageName;
  int? order;

  RestaurantDetailMenuUser({
    this.uniqueid,
    this.discription,
    this.imageName,
    this.order,
  });

  factory RestaurantDetailMenuUser.fromJson(Map<String, dynamic> json) =>
      RestaurantDetailMenuUser(
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
    return other is RestaurantDetailMenuUser &&
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
