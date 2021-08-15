class TouristDetails {
  int? restaurantDishId;
  int? touristRank;
  String? touristVotes;
  int? touristFmUser;
  int? touristFriends;

  TouristDetails({
    this.restaurantDishId,
    this.touristRank,
    this.touristVotes,
    this.touristFmUser,
    this.touristFriends,
  });

  factory TouristDetails.fromJson(Map<String, dynamic> json) => TouristDetails(
        restaurantDishId: json['RestaurantDishId'] as int?,
        touristRank: json['TouristRank'] as int?,
        touristVotes: json['TouristVotes'] as String?,
        touristFmUser: json['TouristFMUser'] as int?,
        touristFriends: json['TouristFriends'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'RestaurantDishId': restaurantDishId,
        'TouristRank': touristRank,
        'TouristVotes': touristVotes,
        'TouristFMUser': touristFmUser,
        'TouristFriends': touristFriends,
      };

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TouristDetails &&
        other.restaurantDishId == restaurantDishId &&
        other.touristRank == touristRank &&
        other.touristVotes == touristVotes &&
        other.touristFmUser == touristFmUser &&
        other.touristFriends == touristFriends;
  }

  @override
  int get hashCode =>
      restaurantDishId.hashCode ^
      touristRank.hashCode ^
      touristVotes.hashCode ^
      touristFmUser.hashCode ^
      touristFriends.hashCode;
}
