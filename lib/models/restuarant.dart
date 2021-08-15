import 'package:flutter/foundation.dart';

import 'check_in_status.dart';
import 'credite_cards.dart';
import 'cuisines.dart';
import 'facilities.dart';
import 'restaurant_detail_menu_owner.dart';
import 'restaurant_detail_menu_user.dart';
import 'restaurant_dishes.dart';
import 'tourist_details.dart';

class Restuarant {
  int? restaurantId;
  String? restaurantName;
  String? restaurantAddress;
  String? location;
  String? contactNumber;
  String? votes;
  int? rating;
  String? openingsHours;
  String? restaurantLogo;
  int? avgMealRate;
  int? botRestaurantId;
  double? distance;
  String? latitude;
  String? longitude;
  int? totalPledge;
  String? promoDetails;
  String? promoUrl;
  String? promoImage;
  int? restaurantFlag;
  int? shareFlag;
  int? feedbackFacility;
  int? homeDelivery;
  int? isClubAccount;
  String? happyHoursFromTime;
  String? happyHoursToTime;
  List<dynamic>? menuImages;
  List<CrediteCards>? crediteCards;
  List<Cuisines>? cuisines;
  List<RestaurantDishes>? restaurantDishes;
  List<dynamic>? customersPromos;
  List<Facilities>? facilities;
  List<TouristDetails>? touristDetails;
  CheckInStatus? checkInStatus;
  int? cityId;
  String? cityName;
  String? minOrder;
  String? minTime;
  int? accountId;
  String? deliveryFromTime;
  String? deliveryToTime;
  String? groupId;
  List<RestaurantDetailMenuUser>? restaurantDetailMenuUser;
  List<RestaurantDetailMenuOwner>? restaurantDetailMenuOwner;
  String? restaurantImage;
  List<dynamic>? weekTime;
  List<dynamic>? restaurantMinOrderValue;
  List<dynamic>? restaurantSafetyMeasure;
  int? brandId;
  String? brandDescription;
  int? locationId;
  String? locationName;
  bool? boolIsOlo;
  bool? boolIsEMenu;
  bool? boolIsJustOrder;
  bool? boolIsBill;
  bool? boolIsSettlement;
  bool? boolIsIrd;
  int? minDeliveryTime;
  dynamic homeDeliveryPickTime;
  dynamic eveDeliveryFromTime;
  dynamic eveDeliveryToTime;
  String? covidText;
  dynamic aboutRestaurantText;
  String? ownedByText;
  String? restaurantSafety;
  dynamic restaurantMobileImage;
  dynamic restaurantDesktopImage;
  bool? enableAdvanceOrder;
  String? advanceOrderTimeSlotDuration;
  bool? enablePayBillOption;
  bool? enableFeedbackFacility;
  int? maxAdvanceOrderDays;
  int? isFreeFlowModifier;
  int? homeDeliveryDistRange;
  String? googleApiKey;
  double? avgWineCost;
  double? avgBeerCost;
  dynamic shareText;
  String? morningFromTime;
  String? morningToTime;
  String? eveningFromTime;
  String? eveningToTime;
  dynamic pickupTimeSlotDuration;
  dynamic deliveryTimeSlotDuration;
  bool? enableJustOrderFeedbackFacility;
  int? brandWiseRestaurantCount;
  dynamic viewTypeFlag;
  bool? enableCopyLocation;
  bool? enableViewAllOutlet;
  bool? enableGetdirections;
  dynamic restaurantShortDescription;
  dynamic imageForOrder;
  dynamic imageForDineIn;
  dynamic imageForReserve;
  dynamic imageForOffers;
  bool? isAllowModifierQuantity;
  int? maxModifierQuantity;
  String? emailAddress;
  String? websiteLink;
  bool? enableCurrentDayAdvanceOrder;
  bool? restrictOffersInAdvanceOrder;
  bool? enableSpecialInstructions;
  String? currencyText;
  String? currencySymbol;

  Restuarant({
    this.restaurantId,
    this.restaurantName,
    this.restaurantAddress,
    this.location,
    this.contactNumber,
    this.votes,
    this.rating,
    this.openingsHours,
    this.restaurantLogo,
    this.avgMealRate,
    this.botRestaurantId,
    this.distance,
    this.latitude,
    this.longitude,
    this.totalPledge,
    this.promoDetails,
    this.promoUrl,
    this.promoImage,
    this.restaurantFlag,
    this.shareFlag,
    this.feedbackFacility,
    this.homeDelivery,
    this.isClubAccount,
    this.happyHoursFromTime,
    this.happyHoursToTime,
    this.menuImages,
    this.crediteCards,
    this.cuisines,
    this.restaurantDishes,
    this.customersPromos,
    this.facilities,
    this.touristDetails,
    this.checkInStatus,
    this.cityId,
    this.cityName,
    this.minOrder,
    this.minTime,
    this.accountId,
    this.deliveryFromTime,
    this.deliveryToTime,
    this.groupId,
    this.restaurantDetailMenuUser,
    this.restaurantDetailMenuOwner,
    this.restaurantImage,
    this.weekTime,
    this.restaurantMinOrderValue,
    this.restaurantSafetyMeasure,
    this.brandId,
    this.brandDescription,
    this.locationId,
    this.locationName,
    this.boolIsOlo,
    this.boolIsEMenu,
    this.boolIsJustOrder,
    this.boolIsBill,
    this.boolIsSettlement,
    this.boolIsIrd,
    this.minDeliveryTime,
    this.homeDeliveryPickTime,
    this.eveDeliveryFromTime,
    this.eveDeliveryToTime,
    this.covidText,
    this.aboutRestaurantText,
    this.ownedByText,
    this.restaurantSafety,
    this.restaurantMobileImage,
    this.restaurantDesktopImage,
    this.enableAdvanceOrder,
    this.advanceOrderTimeSlotDuration,
    this.enablePayBillOption,
    this.enableFeedbackFacility,
    this.maxAdvanceOrderDays,
    this.isFreeFlowModifier,
    this.homeDeliveryDistRange,
    this.googleApiKey,
    this.avgWineCost,
    this.avgBeerCost,
    this.shareText,
    this.morningFromTime,
    this.morningToTime,
    this.eveningFromTime,
    this.eveningToTime,
    this.pickupTimeSlotDuration,
    this.deliveryTimeSlotDuration,
    this.enableJustOrderFeedbackFacility,
    this.brandWiseRestaurantCount,
    this.viewTypeFlag,
    this.enableCopyLocation,
    this.enableViewAllOutlet,
    this.enableGetdirections,
    this.restaurantShortDescription,
    this.imageForOrder,
    this.imageForDineIn,
    this.imageForReserve,
    this.imageForOffers,
    this.isAllowModifierQuantity,
    this.maxModifierQuantity,
    this.emailAddress,
    this.websiteLink,
    this.enableCurrentDayAdvanceOrder,
    this.restrictOffersInAdvanceOrder,
    this.enableSpecialInstructions,
    this.currencyText,
    this.currencySymbol,
  });

  factory Restuarant.fromJson(Map<String, dynamic> json) => Restuarant(
        restaurantId: json['RestaurantID'] != null
            ? json['RestaurantID'] as int?
            : json['RestaurantId'] != null
                ? json['RestaurantId']
                : null,
        restaurantName: json['RestaurantName'] != null
            ? json['RestaurantName'] as String?
            : null,
        restaurantAddress: json['RestaurantAddress'] != null
            ? json['RestaurantAddress'] as String?
            : null,
        location: json['Location'] != null ? json['Location'] as String? : null,
        contactNumber: json['ContactNumber'] != null
            ? json['ContactNumber'] as String?
            : null,
        votes: json['Votes'] != null ? json['Votes'].toString() : null,
        rating: json['Rating'] != null ? json['Rating'] as int? : null,
        openingsHours: json['OpeningsHours'] != null
            ? json['OpeningsHours'] as String?
            : null,
        restaurantLogo: json['RestaurantLogo'] != null
            ? json['RestaurantLogo'] as String?
            : null,
        avgMealRate:
            json['AvgMealRate'] != null ? json['AvgMealRate'] as int? : null,
        botRestaurantId: json['BOTRestaurantId'] != null
            ? json['BOTRestaurantId'] as int?
            : null,
        distance: json['Distance'] != null ? json['Distance'] as double? : null,
        latitude: json['Latitude'] != null ? json['Latitude'] as String? : null,
        longitude:
            json['Longitude'] != null ? json['Longitude'] as String? : null,
        totalPledge:
            json['TotalPledge'] != null ? json['TotalPledge'] as int? : null,
        promoDetails: json['PromoDetails'] != null
            ? json['PromoDetails'] as String?
            : null,
        promoUrl: json['PromoURL'] != null ? json['PromoURL'] as String? : null,
        promoImage:
            json['PromoImage'] != null ? json['PromoImage'] as String? : null,
        restaurantFlag: json['RestaurantFlag'] != null
            ? json['RestaurantFlag'] as int?
            : null,
        shareFlag: json['ShareFlag'] != null ? json['ShareFlag'] as int? : null,
        feedbackFacility: json['FeedbackFacility'] != null
            ? json['FeedbackFacility'] as int?
            : null,
        homeDelivery:
            json['HomeDelivery'] != null ? json['HomeDelivery'] as int? : null,
        isClubAccount: json['IsClubAccount'] != null
            ? json['IsClubAccount'] as int?
            : null,
        happyHoursFromTime: json['HappyHoursFromTime'] != null
            ? json['HappyHoursFromTime'] as String?
            : null,
        happyHoursToTime: json['HappyHoursToTime'] != null
            ? json['HappyHoursToTime'] as String?
            : null,
        menuImages: json['MenuImages'] != null
            ? json['MenuImages'] as List<dynamic>?
            : null,
        crediteCards: json['CrediteCards'] != null
            ? (json['CrediteCards'] as List<dynamic>?)
                ?.map((e) => CrediteCards.fromJson(e as Map<String, dynamic>))
                .toList()
            : null,
        cuisines: json['Cuisines'] != null
            ? (json['Cuisines'] is List)
                ? ((json['Cuisines'] as List<dynamic>?)
                    ?.map((e) => Cuisines.fromJson(e as Map<String, dynamic>))
                    .toList())
                : [Cuisines(cuisine: json['Cuisines'])]
            : null,
        restaurantDishes: json['RestaurantDishes'] != null
            ? (json['RestaurantDishes'] as List<dynamic>?)
                ?.map(
                    (e) => RestaurantDishes.fromJson(e as Map<String, dynamic>))
                .toList()
            : null,
        customersPromos: json['CustomersPromos'] != null
            ? json['CustomersPromos'] as List<dynamic>?
            : null,
        facilities: json['Facilities'] != null
            ? (json['Facilities'] as List<dynamic>?)
                ?.map((e) => Facilities.fromJson(e as Map<String, dynamic>))
                .toList()
            : null,
        touristDetails: json['TouristDetails'] != null
            ? (json['TouristDetails'] as List<dynamic>?)
                ?.map((e) => TouristDetails.fromJson(e as Map<String, dynamic>))
                .toList()
            : null,
        checkInStatus: json['CheckInStatus'] == null
            ? null
            : CheckInStatus.fromJson(
                json['CheckInStatus'] as Map<String, dynamic>),
        cityId: json['CityId'] != null ? json['CityId'] as int? : null,
        cityName: json['CityName'] != null ? json['CityName'] as String? : null,
        minOrder: json['MinOrder'] != null ? json['MinOrder'] as String? : null,
        minTime: json['MinTime'] != null ? json['MinTime'] as String? : null,
        accountId: json['AccountId'] != null ? json['AccountId'] as int? : null,
        deliveryFromTime: json['DeliveryFromTime'] != null
            ? json['DeliveryFromTime'] as String?
            : null,
        deliveryToTime: json['DeliveryToTime'] != null
            ? json['DeliveryToTime'] as String?
            : null,
        groupId: json['GroupId'] != null ? json['GroupId'] as String? : null,
        restaurantDetailMenuUser: json['RestaurantDetailMenuUser'] != null
            ? (json['RestaurantDetailMenuUser'] as List<dynamic>?)
                ?.map((e) => RestaurantDetailMenuUser.fromJson(
                    e as Map<String, dynamic>))
                .toList()
            : null,
        restaurantDetailMenuOwner: json['RestaurantDetailMenuOwner'] != null
            ? (json['RestaurantDetailMenuOwner'] as List<dynamic>?)
                ?.map((e) => RestaurantDetailMenuOwner.fromJson(
                    e as Map<String, dynamic>))
                .toList()
            : null,
        restaurantImage: json['RestaurantImage'] != null
            ? json['RestaurantImage'] as String?
            : null,
        weekTime: json['WeekTime'] != null
            ? json['WeekTime'] as List<dynamic>?
            : null,
        restaurantMinOrderValue: json['RestaurantMinOrderValue'] != null
            ? json['RestaurantMinOrderValue'] as List<dynamic>?
            : null,
        restaurantSafetyMeasure: json['RestaurantSafetyMeasure'] != null
            ? json['RestaurantSafetyMeasure'] as List<dynamic>?
            : null,
        brandId: json['BrandId'] != null ? json['BrandId'] as int? : null,
        brandDescription: json['BrandDescription'] != null
            ? json['BrandDescription'] as String?
            : null,
        locationId:
            json['LocationId'] != null ? json['LocationId'] as int? : null,
        locationName: json['LocationName'] != null
            ? json['LocationName'] as String?
            : null,
        boolIsOlo:
            json['BoolIsOLO'] != null ? json['BoolIsOLO'] as bool? : null,
        boolIsEMenu:
            json['BoolIsEMenu'] != null ? json['BoolIsEMenu'] as bool? : null,
        boolIsJustOrder: json['BoolIsJustOrder'] != null
            ? json['BoolIsJustOrder'] as bool?
            : null,
        boolIsBill:
            json['BoolIsBill'] != null ? json['BoolIsBill'] as bool? : null,
        boolIsSettlement: json['BoolIsSettlement'] != null
            ? json['BoolIsSettlement'] as bool?
            : null,
        boolIsIrd:
            json['BoolIsIRD'] != null ? json['BoolIsIRD'] as bool? : null,
        minDeliveryTime: json['MinDeliveryTime'] != null
            ? json['MinDeliveryTime'] as int?
            : null,
        homeDeliveryPickTime: json['HomeDeliveryPickTime'] != null
            ? json['HomeDeliveryPickTime']
            : null,
        eveDeliveryFromTime: json['EveDeliveryFromTime'] != null
            ? json['EveDeliveryFromTime']
            : null,
        eveDeliveryToTime: json['EveDeliveryToTime'] != null
            ? json['EveDeliveryToTime']
            : null,
        covidText:
            json['COVIDText'] != null ? json['COVIDText'] as String? : null,
        aboutRestaurantText: json['AboutRestaurantText'] != null
            ? json['AboutRestaurantText']
            : null,
        ownedByText:
            json['OwnedByText'] != null ? json['OwnedByText'] as String? : null,
        restaurantSafety: json['RestaurantSafety'] != null
            ? json['RestaurantSafety'] as String?
            : null,
        restaurantMobileImage: json['RestaurantMobileImage'] != null
            ? json['RestaurantMobileImage']
            : null,
        restaurantDesktopImage: json['RestaurantDesktopImage'] != null
            ? json['RestaurantDesktopImage']
            : null,
        enableAdvanceOrder: json['EnableAdvanceOrder'] != null
            ? json['EnableAdvanceOrder'] as bool?
            : null,
        advanceOrderTimeSlotDuration:
            json['AdvanceOrderTimeSlotDuration'] != null
                ? json['AdvanceOrderTimeSlotDuration'] as String?
                : null,
        enablePayBillOption: json['EnablePayBillOption'] != null
            ? json['EnablePayBillOption'] as bool?
            : null,
        enableFeedbackFacility: json['EnableFeedbackFacility'] != null
            ? json['EnableFeedbackFacility'] as bool?
            : null,
        maxAdvanceOrderDays: json['MaxAdvanceOrderDays'] != null
            ? json['MaxAdvanceOrderDays'] as int?
            : null,
        isFreeFlowModifier: json['IsFreeFlowModifier'] != null
            ? json['IsFreeFlowModifier'] as int?
            : null,
        homeDeliveryDistRange: json['HomeDeliveryDistRange'] != null
            ? json['HomeDeliveryDistRange'] as int?
            : null,
        googleApiKey: json['GoogleAPIKey'] != null
            ? json['GoogleAPIKey'] as String?
            : null,
        avgWineCost:
            json['AvgWineCost'] != null ? json['AvgWineCost'] as double? : null,
        avgBeerCost:
            json['AvgBeerCost'] != null ? json['AvgBeerCost'] as double? : null,
        shareText: json['ShareText'] != null ? json['ShareText'] : null,
        morningFromTime: json['MorningFromTime'] != null
            ? json['MorningFromTime'] as String?
            : null,
        morningToTime: json['MorningToTime'] != null
            ? json['MorningToTime'] as String?
            : null,
        eveningFromTime: json['EveningFromTime'] != null
            ? json['EveningFromTime'] as String?
            : null,
        eveningToTime: json['EveningToTime'] != null
            ? json['EveningToTime'] as String?
            : null,
        pickupTimeSlotDuration: json['PickupTimeSlotDuration'] != null
            ? json['PickupTimeSlotDuration']
            : null,
        deliveryTimeSlotDuration: json['DeliveryTimeSlotDuration'] != null
            ? json['DeliveryTimeSlotDuration']
            : null,
        enableJustOrderFeedbackFacility:
            json['EnableJustOrderFeedbackFacility'] != null
                ? json['EnableJustOrderFeedbackFacility'] as bool?
                : null,
        brandWiseRestaurantCount: json['BrandWiseRestaurantCount'] != null
            ? json['BrandWiseRestaurantCount'] as int?
            : null,
        viewTypeFlag:
            json['ViewTypeFlag'] != null ? json['ViewTypeFlag'] : null,
        enableCopyLocation: json['EnableCopyLocation'] != null
            ? json['EnableCopyLocation'] as bool?
            : null,
        enableViewAllOutlet: json['EnableViewAllOutlet'] != null
            ? json['EnableViewAllOutlet'] as bool?
            : null,
        enableGetdirections: json['EnableGetdirections'] != null
            ? json['EnableGetdirections'] as bool?
            : null,
        restaurantShortDescription: json['RestaurantShortDescription'] != null
            ? json['RestaurantShortDescription']
            : null,
        imageForOrder:
            json['ImageForOrder'] != null ? json['ImageForOrder'] : null,
        imageForDineIn:
            json['ImageForDine_In'] != null ? json['ImageForDine_In'] : null,
        imageForReserve:
            json['ImageForReserve'] != null ? json['ImageForReserve'] : null,
        imageForOffers:
            json['ImageForOffers'] != null ? json['ImageForOffers'] : null,
        isAllowModifierQuantity: json['isAllowModifierQuantity'] != null
            ? json['isAllowModifierQuantity'] as bool?
            : null,
        maxModifierQuantity: json['maxModifierQuantity'] != null
            ? json['maxModifierQuantity'] as int?
            : null,
        emailAddress: json['EmailAddress'] != null
            ? json['EmailAddress'] as String?
            : null,
        websiteLink:
            json['WebsiteLink'] != null ? json['WebsiteLink'] as String? : null,
        enableCurrentDayAdvanceOrder:
            json['EnableCurrentDayAdvanceOrder'] != null
                ? json['EnableCurrentDayAdvanceOrder'] as bool?
                : null,
        restrictOffersInAdvanceOrder:
            json['RestrictOffersInAdvanceOrder'] != null
                ? json['RestrictOffersInAdvanceOrder'] as bool?
                : null,
        enableSpecialInstructions: json['EnableSpecialInstructions'] != null
            ? json['EnableSpecialInstructions'] as bool?
            : null,
        currencyText: json['CurrencyText'] != null
            ? json['CurrencyText'] as String?
            : null,
        currencySymbol: json['CurrencySymbol'] != null
            ? json['CurrencySymbol'] as String?
            : null,
      );

  Map<String, dynamic> toJson() => {
        'RestaurantID': restaurantId,
        'RestaurantName': restaurantName,
        'RestaurantAddress': restaurantAddress,
        'Location': location,
        'ContactNumber': contactNumber,
        'Votes': votes,
        'Rating': rating,
        'OpeningsHours': openingsHours,
        'RestaurantLogo': restaurantLogo,
        'AvgMealRate': avgMealRate,
        'BOTRestaurantId': botRestaurantId,
        'Distance': distance,
        'Latitude': latitude,
        'Longitude': longitude,
        'TotalPledge': totalPledge,
        'PromoDetails': promoDetails,
        'PromoURL': promoUrl,
        'PromoImage': promoImage,
        'RestaurantFlag': restaurantFlag,
        'ShareFlag': shareFlag,
        'FeedbackFacility': feedbackFacility,
        'HomeDelivery': homeDelivery,
        'IsClubAccount': isClubAccount,
        'HappyHoursFromTime': happyHoursFromTime,
        'HappyHoursToTime': happyHoursToTime,
        'MenuImages': menuImages,
        'CrediteCards': crediteCards?.map((e) => e.toJson()).toList(),
        'Cuisines': cuisines?.map((e) => e.toJson()).toList(),
        'RestaurantDishes': restaurantDishes?.map((e) => e.toJson()).toList(),
        'CustomersPromos': customersPromos,
        'Facilities': facilities?.map((e) => e.toJson()).toList(),
        'TouristDetails': touristDetails?.map((e) => e.toJson()).toList(),
        'CheckInStatus': checkInStatus?.toJson(),
        'CityId': cityId,
        'CityName': cityName,
        'MinOrder': minOrder,
        'MinTime': minTime,
        'AccountId': accountId,
        'DeliveryFromTime': deliveryFromTime,
        'DeliveryToTime': deliveryToTime,
        'GroupId': groupId,
        'RestaurantDetailMenuUser':
            restaurantDetailMenuUser?.map((e) => e.toJson()).toList(),
        'RestaurantDetailMenuOwner':
            restaurantDetailMenuOwner?.map((e) => e.toJson()).toList(),
        'RestaurantImage': restaurantImage,
        'WeekTime': weekTime,
        'RestaurantMinOrderValue': restaurantMinOrderValue,
        'RestaurantSafetyMeasure': restaurantSafetyMeasure,
        'BrandId': brandId,
        'BrandDescription': brandDescription,
        'LocationId': locationId,
        'LocationName': locationName,
        'BoolIsOLO': boolIsOlo,
        'BoolIsEMenu': boolIsEMenu,
        'BoolIsJustOrder': boolIsJustOrder,
        'BoolIsBill': boolIsBill,
        'BoolIsSettlement': boolIsSettlement,
        'BoolIsIRD': boolIsIrd,
        'MinDeliveryTime': minDeliveryTime,
        'HomeDeliveryPickTime': homeDeliveryPickTime,
        'EveDeliveryFromTime': eveDeliveryFromTime,
        'EveDeliveryToTime': eveDeliveryToTime,
        'COVIDText': covidText,
        'AboutRestaurantText': aboutRestaurantText,
        'OwnedByText': ownedByText,
        'RestaurantSafety': restaurantSafety,
        'RestaurantMobileImage': restaurantMobileImage,
        'RestaurantDesktopImage': restaurantDesktopImage,
        'EnableAdvanceOrder': enableAdvanceOrder,
        'AdvanceOrderTimeSlotDuration': advanceOrderTimeSlotDuration,
        'EnablePayBillOption': enablePayBillOption,
        'EnableFeedbackFacility': enableFeedbackFacility,
        'MaxAdvanceOrderDays': maxAdvanceOrderDays,
        'IsFreeFlowModifier': isFreeFlowModifier,
        'HomeDeliveryDistRange': homeDeliveryDistRange,
        'GoogleAPIKey': googleApiKey,
        'AvgWineCost': avgWineCost,
        'AvgBeerCost': avgBeerCost,
        'ShareText': shareText,
        'MorningFromTime': morningFromTime,
        'MorningToTime': morningToTime,
        'EveningFromTime': eveningFromTime,
        'EveningToTime': eveningToTime,
        'PickupTimeSlotDuration': pickupTimeSlotDuration,
        'DeliveryTimeSlotDuration': deliveryTimeSlotDuration,
        'EnableJustOrderFeedbackFacility': enableJustOrderFeedbackFacility,
        'BrandWiseRestaurantCount': brandWiseRestaurantCount,
        'ViewTypeFlag': viewTypeFlag,
        'EnableCopyLocation': enableCopyLocation,
        'EnableViewAllOutlet': enableViewAllOutlet,
        'EnableGetdirections': enableGetdirections,
        'RestaurantShortDescription': restaurantShortDescription,
        'ImageForOrder': imageForOrder,
        'ImageForDine_In': imageForDineIn,
        'ImageForReserve': imageForReserve,
        'ImageForOffers': imageForOffers,
        'isAllowModifierQuantity': isAllowModifierQuantity,
        'maxModifierQuantity': maxModifierQuantity,
        'EmailAddress': emailAddress,
        'WebsiteLink': websiteLink,
        'EnableCurrentDayAdvanceOrder': enableCurrentDayAdvanceOrder,
        'RestrictOffersInAdvanceOrder': restrictOffersInAdvanceOrder,
        'EnableSpecialInstructions': enableSpecialInstructions,
        'CurrencyText': currencyText,
        'CurrencySymbol': currencySymbol,
      };

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Restuarant &&
        listEquals(other.menuImages, menuImages) &&
        listEquals(other.crediteCards, crediteCards) &&
        listEquals(other.cuisines, cuisines) &&
        listEquals(other.restaurantDishes, restaurantDishes) &&
        listEquals(other.customersPromos, customersPromos) &&
        listEquals(other.facilities, facilities) &&
        listEquals(other.touristDetails, touristDetails) &&
        listEquals(other.restaurantDetailMenuUser, restaurantDetailMenuUser) &&
        listEquals(
            other.restaurantDetailMenuOwner, restaurantDetailMenuOwner) &&
        listEquals(other.weekTime, weekTime) &&
        listEquals(other.restaurantMinOrderValue, restaurantMinOrderValue) &&
        listEquals(other.restaurantSafetyMeasure, restaurantSafetyMeasure) &&
        other.restaurantId == restaurantId &&
        other.restaurantName == restaurantName &&
        other.restaurantAddress == restaurantAddress &&
        other.location == location &&
        other.contactNumber == contactNumber &&
        other.votes == votes &&
        other.rating == rating &&
        other.openingsHours == openingsHours &&
        other.restaurantLogo == restaurantLogo &&
        other.avgMealRate == avgMealRate &&
        other.botRestaurantId == botRestaurantId &&
        other.distance == distance &&
        other.latitude == latitude &&
        other.longitude == longitude &&
        other.totalPledge == totalPledge &&
        other.promoDetails == promoDetails &&
        other.promoUrl == promoUrl &&
        other.promoImage == promoImage &&
        other.restaurantFlag == restaurantFlag &&
        other.shareFlag == shareFlag &&
        other.feedbackFacility == feedbackFacility &&
        other.homeDelivery == homeDelivery &&
        other.isClubAccount == isClubAccount &&
        other.happyHoursFromTime == happyHoursFromTime &&
        other.happyHoursToTime == happyHoursToTime &&
        other.checkInStatus == checkInStatus &&
        other.cityId == cityId &&
        other.cityName == cityName &&
        other.minOrder == minOrder &&
        other.minTime == minTime &&
        other.accountId == accountId &&
        other.deliveryFromTime == deliveryFromTime &&
        other.deliveryToTime == deliveryToTime &&
        other.groupId == groupId &&
        other.restaurantImage == restaurantImage &&
        other.brandId == brandId &&
        other.brandDescription == brandDescription &&
        other.locationId == locationId &&
        other.locationName == locationName &&
        other.boolIsOlo == boolIsOlo &&
        other.boolIsEMenu == boolIsEMenu &&
        other.boolIsJustOrder == boolIsJustOrder &&
        other.boolIsBill == boolIsBill &&
        other.boolIsSettlement == boolIsSettlement &&
        other.boolIsIrd == boolIsIrd &&
        other.minDeliveryTime == minDeliveryTime &&
        other.homeDeliveryPickTime == homeDeliveryPickTime &&
        other.eveDeliveryFromTime == eveDeliveryFromTime &&
        other.eveDeliveryToTime == eveDeliveryToTime &&
        other.covidText == covidText &&
        other.aboutRestaurantText == aboutRestaurantText &&
        other.ownedByText == ownedByText &&
        other.restaurantSafety == restaurantSafety &&
        other.restaurantMobileImage == restaurantMobileImage &&
        other.restaurantDesktopImage == restaurantDesktopImage &&
        other.enableAdvanceOrder == enableAdvanceOrder &&
        other.advanceOrderTimeSlotDuration == advanceOrderTimeSlotDuration &&
        other.enablePayBillOption == enablePayBillOption &&
        other.enableFeedbackFacility == enableFeedbackFacility &&
        other.maxAdvanceOrderDays == maxAdvanceOrderDays &&
        other.isFreeFlowModifier == isFreeFlowModifier &&
        other.homeDeliveryDistRange == homeDeliveryDistRange &&
        other.googleApiKey == googleApiKey &&
        other.avgWineCost == avgWineCost &&
        other.avgBeerCost == avgBeerCost &&
        other.shareText == shareText &&
        other.morningFromTime == morningFromTime &&
        other.morningToTime == morningToTime &&
        other.eveningFromTime == eveningFromTime &&
        other.eveningToTime == eveningToTime &&
        other.pickupTimeSlotDuration == pickupTimeSlotDuration &&
        other.deliveryTimeSlotDuration == deliveryTimeSlotDuration &&
        other.enableJustOrderFeedbackFacility ==
            enableJustOrderFeedbackFacility &&
        other.brandWiseRestaurantCount == brandWiseRestaurantCount &&
        other.viewTypeFlag == viewTypeFlag &&
        other.enableCopyLocation == enableCopyLocation &&
        other.enableViewAllOutlet == enableViewAllOutlet &&
        other.enableGetdirections == enableGetdirections &&
        other.restaurantShortDescription == restaurantShortDescription &&
        other.imageForOrder == imageForOrder &&
        other.imageForDineIn == imageForDineIn &&
        other.imageForReserve == imageForReserve &&
        other.imageForOffers == imageForOffers &&
        other.isAllowModifierQuantity == isAllowModifierQuantity &&
        other.maxModifierQuantity == maxModifierQuantity &&
        other.emailAddress == emailAddress &&
        other.websiteLink == websiteLink &&
        other.enableCurrentDayAdvanceOrder == enableCurrentDayAdvanceOrder &&
        other.restrictOffersInAdvanceOrder == restrictOffersInAdvanceOrder &&
        other.enableSpecialInstructions == enableSpecialInstructions &&
        other.currencyText == currencyText &&
        other.currencySymbol == currencySymbol;
  }

  @override
  int get hashCode =>
      restaurantId.hashCode ^
      restaurantName.hashCode ^
      restaurantAddress.hashCode ^
      location.hashCode ^
      contactNumber.hashCode ^
      votes.hashCode ^
      rating.hashCode ^
      openingsHours.hashCode ^
      restaurantLogo.hashCode ^
      avgMealRate.hashCode ^
      botRestaurantId.hashCode ^
      distance.hashCode ^
      latitude.hashCode ^
      longitude.hashCode ^
      totalPledge.hashCode ^
      promoDetails.hashCode ^
      promoUrl.hashCode ^
      promoImage.hashCode ^
      restaurantFlag.hashCode ^
      shareFlag.hashCode ^
      feedbackFacility.hashCode ^
      homeDelivery.hashCode ^
      isClubAccount.hashCode ^
      happyHoursFromTime.hashCode ^
      happyHoursToTime.hashCode ^
      menuImages.hashCode ^
      crediteCards.hashCode ^
      cuisines.hashCode ^
      restaurantDishes.hashCode ^
      customersPromos.hashCode ^
      facilities.hashCode ^
      touristDetails.hashCode ^
      checkInStatus.hashCode ^
      cityId.hashCode ^
      cityName.hashCode ^
      minOrder.hashCode ^
      minTime.hashCode ^
      accountId.hashCode ^
      deliveryFromTime.hashCode ^
      deliveryToTime.hashCode ^
      groupId.hashCode ^
      restaurantDetailMenuUser.hashCode ^
      restaurantDetailMenuOwner.hashCode ^
      restaurantImage.hashCode ^
      weekTime.hashCode ^
      restaurantMinOrderValue.hashCode ^
      restaurantSafetyMeasure.hashCode ^
      brandId.hashCode ^
      brandDescription.hashCode ^
      locationId.hashCode ^
      locationName.hashCode ^
      boolIsOlo.hashCode ^
      boolIsEMenu.hashCode ^
      boolIsJustOrder.hashCode ^
      boolIsBill.hashCode ^
      boolIsSettlement.hashCode ^
      boolIsIrd.hashCode ^
      minDeliveryTime.hashCode ^
      homeDeliveryPickTime.hashCode ^
      eveDeliveryFromTime.hashCode ^
      eveDeliveryToTime.hashCode ^
      covidText.hashCode ^
      aboutRestaurantText.hashCode ^
      ownedByText.hashCode ^
      restaurantSafety.hashCode ^
      restaurantMobileImage.hashCode ^
      restaurantDesktopImage.hashCode ^
      enableAdvanceOrder.hashCode ^
      advanceOrderTimeSlotDuration.hashCode ^
      enablePayBillOption.hashCode ^
      enableFeedbackFacility.hashCode ^
      maxAdvanceOrderDays.hashCode ^
      isFreeFlowModifier.hashCode ^
      homeDeliveryDistRange.hashCode ^
      googleApiKey.hashCode ^
      avgWineCost.hashCode ^
      avgBeerCost.hashCode ^
      shareText.hashCode ^
      morningFromTime.hashCode ^
      morningToTime.hashCode ^
      eveningFromTime.hashCode ^
      eveningToTime.hashCode ^
      pickupTimeSlotDuration.hashCode ^
      deliveryTimeSlotDuration.hashCode ^
      enableJustOrderFeedbackFacility.hashCode ^
      brandWiseRestaurantCount.hashCode ^
      viewTypeFlag.hashCode ^
      enableCopyLocation.hashCode ^
      enableViewAllOutlet.hashCode ^
      enableGetdirections.hashCode ^
      restaurantShortDescription.hashCode ^
      imageForOrder.hashCode ^
      imageForDineIn.hashCode ^
      imageForReserve.hashCode ^
      imageForOffers.hashCode ^
      isAllowModifierQuantity.hashCode ^
      maxModifierQuantity.hashCode ^
      emailAddress.hashCode ^
      websiteLink.hashCode ^
      enableCurrentDayAdvanceOrder.hashCode ^
      restrictOffersInAdvanceOrder.hashCode ^
      enableSpecialInstructions.hashCode ^
      currencyText.hashCode ^
      currencySymbol.hashCode;
}
