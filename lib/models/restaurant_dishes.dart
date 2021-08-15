class RestaurantDishes {
  int? restaurantDishId;
  String? restaurantDishName;
  int? rank;
  String? votes;
  int? isVeg;
  String? dishImage;
  int? dishGlossary;
  int? fmUser;
  int? friends;
  int? isDishLike;
  int? dishSequence;
  String? rate;

  RestaurantDishes({
    this.restaurantDishId,
    this.restaurantDishName,
    this.rank,
    this.votes,
    this.isVeg,
    this.dishImage,
    this.dishGlossary,
    this.fmUser,
    this.friends,
    this.isDishLike,
    this.dishSequence,
    this.rate,
  });

  factory RestaurantDishes.fromJson(Map<String, dynamic> json) =>
      RestaurantDishes(
        restaurantDishId: json['RestaurantDishId'] as int?,
        restaurantDishName: json['RestaurantDishName'] as String?,
        rank: json['Rank'] as int?,
        votes: json['Votes'] as String?,
        isVeg: json['IsVeg'] as int?,
        dishImage: json['DishImage'] as String?,
        dishGlossary: json['DishGlossary'] as int?,
        fmUser: json['FMUser'] as int?,
        friends: json['Friends'] as int?,
        isDishLike: json['IsDishLike'] as int?,
        dishSequence: json['DishSequence'] as int?,
        rate: json['Rate'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'RestaurantDishId': restaurantDishId,
        'RestaurantDishName': restaurantDishName,
        'Rank': rank,
        'Votes': votes,
        'IsVeg': isVeg,
        'DishImage': dishImage,
        'DishGlossary': dishGlossary,
        'FMUser': fmUser,
        'Friends': friends,
        'IsDishLike': isDishLike,
        'DishSequence': dishSequence,
        'Rate': rate,
      };

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RestaurantDishes &&
        other.restaurantDishId == restaurantDishId &&
        other.restaurantDishName == restaurantDishName &&
        other.rank == rank &&
        other.votes == votes &&
        other.isVeg == isVeg &&
        other.dishImage == dishImage &&
        other.dishGlossary == dishGlossary &&
        other.fmUser == fmUser &&
        other.friends == friends &&
        other.isDishLike == isDishLike &&
        other.dishSequence == dishSequence &&
        other.rate == rate;
  }

  @override
  int get hashCode =>
      restaurantDishId.hashCode ^
      restaurantDishName.hashCode ^
      rank.hashCode ^
      votes.hashCode ^
      isVeg.hashCode ^
      dishImage.hashCode ^
      dishGlossary.hashCode ^
      fmUser.hashCode ^
      friends.hashCode ^
      isDishLike.hashCode ^
      dishSequence.hashCode ^
      rate.hashCode;
}
