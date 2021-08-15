class Address {
  String? fullAddress;
  int? cityId;
  String? cityName;
  String? countryName;
  int? countryId;
  dynamic message;

  Address({
    this.fullAddress,
    this.cityId,
    this.cityName,
    this.countryName,
    this.countryId,
    this.message,
  });

  factory Address.fromJson(Map<String, dynamic> json) => Address(
        fullAddress: json['FullAddress'] as String?,
        cityId: json['CityId'] as int?,
        cityName: json['CityName'] as String?,
        countryName: json['CountryName'] as String?,
        countryId: json['CountryId'] as int?,
        message: json['Message'],
      );

  Map<String, dynamic> toJson() => {
        'FullAddress': fullAddress,
        'CityId': cityId,
        'CityName': cityName,
        'CountryName': countryName,
        'CountryId': countryId,
        'Message': message,
      };
}
