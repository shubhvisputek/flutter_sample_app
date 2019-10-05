import 'package:json_annotation/json_annotation.dart';
part 'ModelClass.g.dart';

//run "flutter packages pub run build_runner build" on Command line after changes done on this file

@JsonSerializable()
class ImageModel {
  String imageID;
  String date;
  String imageUrl;

  ImageModel({
    this.imageID,
    this.date,
    this.imageUrl,
  });

  factory ImageModel.fromJson(Map<String, dynamic> json) =>
      _$ImageModelFromJson(json);
  Map<String, dynamic> toJson() => _$ImageModelToJson(this);
}

@JsonSerializable()
class AppSettings {
  String userUniqueID;
  String appLang;
  String isPushNotificationEnable;

  AppSettings({
    this.userUniqueID,
    this.appLang,
    this.isPushNotificationEnable,
  });

  factory AppSettings.fromJson(Map<String, dynamic> json) =>
      _$AppSettingsFromJson(json);
  Map<String, dynamic> toJson() => _$AppSettingsToJson(this);
}

@JsonSerializable()
class BasicInfo {
  String userUniqueID;
  String fisrtName;
  String lastName;
  String emailID;
  String mobileNumber;

  BasicInfo({
    this.userUniqueID,
    this.fisrtName,
    this.lastName,
    this.emailID,
    this.mobileNumber,
  });

  factory BasicInfo.fromJson(Map<String, dynamic> json) =>
      _$BasicInfoFromJson(json);
  Map<String, dynamic> toJson() => _$BasicInfoToJson(this);
}

@JsonSerializable()
class AddressInfo {
  String userUniqueID;
  String addressLine1;
  String addressLine2;
  String addressLine3;
  String city;
  String district;
  String state;
  String nation;
  String latitude;
  String longitude;

  AddressInfo({
    this.userUniqueID,
    this.addressLine1,
    this.addressLine2,
    this.addressLine3,
    this.city,
    this.district,
    this.state,
    this.nation,
    this.latitude,
    this.longitude,
  });

  factory AddressInfo.fromJson(Map<String, dynamic> json) =>
      _$AddressInfoFromJson(json);
  Map<String, dynamic> toJson() => _$AddressInfoToJson(this);
}

@JsonSerializable()
class AuthInfo {
  String userUniqueID;
  String password;
  String googleID;
  String googleAuthToken;
  String faceBookID;
  String faceBookAuthToken;

  AuthInfo({
    this.userUniqueID,
    this.password,
    this.googleID,
    this.googleAuthToken,
    this.faceBookID,
    this.faceBookAuthToken,
  });

  factory AuthInfo.fromJson(Map<String, dynamic> json) =>
      _$AuthInfoFromJson(json);
  Map<String, dynamic> toJson() => _$AuthInfoToJson(this);
}

@JsonSerializable()
class ReferralInfo {
  String userUniqueID;
  String referralCode;
  String myReferralCode;

  ReferralInfo({
    this.userUniqueID,
    this.referralCode,
    this.myReferralCode,
  });

  factory ReferralInfo.fromJson(Map<String, dynamic> json) =>
      _$ReferralInfoFromJson(json);
  Map<String, dynamic> toJson() => _$ReferralInfoToJson(this);
}

@JsonSerializable()
class User {
  String userUniqueID;
  BasicInfo basicInfo;
  AddressInfo addressInfo;
  AuthInfo authInfo;
  ReferralInfo referralInfo;
  ImageModel profileImage;
  List<ImageModel> otherImageList;
  List<ImageModel> userTagsImageList;
  List<String> favouriteMerchantProductIDList;

  User({
    this.userUniqueID,
    this.basicInfo,
    this.addressInfo,
    this.authInfo,
    this.referralInfo,
    this.profileImage,
    this.otherImageList,
    this.userTagsImageList,
    this.favouriteMerchantProductIDList,
  });

  factory User.fromJson(Map<String, dynamic> json) =>
      _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}

@JsonSerializable()
class BankInfo {
  String userUniqueID;
  String merchantUniqueID;
  String accountNumber;
  String ifscCode;

  BankInfo({
    this.userUniqueID,
    this.merchantUniqueID,
    this.accountNumber,
    this.ifscCode,
  });

  factory BankInfo.fromJson(Map<String, dynamic> json) =>
      _$BankInfoFromJson(json);
  Map<String, dynamic> toJson() => _$BankInfoToJson(this);
}

@JsonSerializable()
class KYCInfo {
  String userUniqueID;
  String merchantUniqueID;
  String aadharNumber;
  String isAadharNumberVerified;
  String authaadharToken;
  String panNumber;
  String isPanNumberVerified;
  String authPanToken;

  KYCInfo({
    this.userUniqueID,
    this.merchantUniqueID,
    this.aadharNumber,
    this.isAadharNumberVerified,
    this.authaadharToken,
    this.panNumber,
    this.isPanNumberVerified,
    this.authPanToken,
  });

  factory KYCInfo.fromJson(Map<String, dynamic> json) =>
      _$KYCInfoFromJson(json);
  Map<String, dynamic> toJson() => _$KYCInfoToJson(this);
}

@JsonSerializable()
class MerchantUser {
  String merchantUniqueID;
  BasicInfo basicInfo;
  AddressInfo addressInfo;
  AuthInfo authInfo;
  ReferralInfo referralInfo;
  ImageModel profileImage;
  List<ImageModel> otherImageList;
  List<ImageModel> userTagsImageList;
  BankInfo bankInfo;
  KYCInfo kycInfo;

  MerchantUser({
    this.merchantUniqueID,
    this.basicInfo,
    this.addressInfo,
    this.authInfo,
    this.referralInfo,
    this.profileImage,
    this.otherImageList,
    this.userTagsImageList,
    this.bankInfo,
    this.kycInfo,
  });

  factory MerchantUser.fromJson(Map<String, dynamic> json) =>
      _$MerchantUserFromJson(json);
  Map<String, dynamic> toJson() => _$MerchantUserToJson(this);
}

@JsonSerializable()
class Review {
  String merchantUniqueID;
  String merchantProductID;
  String userUniqueID;
  String reviewComment;
  String rating;
  String dateOfCreated;
  String dateOfUpdated;

  Review({
    this.merchantUniqueID,
    this.merchantProductID,
    this.userUniqueID,
    this.reviewComment,
    this.rating,
    this.dateOfCreated,
    this.dateOfUpdated,
  });

  factory Review.fromJson(Map<String, dynamic> json) =>
      _$ReviewFromJson(json);
  Map<String, dynamic> toJson() => _$ReviewToJson(this);
}

@JsonSerializable()
class Food {
  String merchantUniqueID;
  String merchantProductID;
  String foodUniqueID;
  String foodName;
  String foodPrice;
  String imageCategoryUniqueID;
  ImageModel profileImage;
  List<ImageModel> otherImageList;
  Offer foodOffer;
  String foodVegOrNonVeg;
  Coupens coupens;

  Food({
    this.merchantUniqueID,
    this.merchantProductID,
    this.foodUniqueID,
    this.foodName,
    this.foodPrice,
    this.imageCategoryUniqueID,
    this.profileImage,
    this.otherImageList,
    this.foodOffer,
    this.foodVegOrNonVeg,
    this.coupens,
  });

  factory Food.fromJson(Map<String, dynamic> json) =>
      _$FoodFromJson(json);
  Map<String, dynamic> toJson() => _$FoodToJson(this);
}

@JsonSerializable()
class Offer {
  String offerName;
  String offerCode;
  String discount;
  String maximumCashback;
  String minimumTransAmount;

  Offer({
    this.offerName,
    this.offerCode,
    this.discount,
    this.maximumCashback,
    this.minimumTransAmount,
  });

  factory Offer.fromJson(Map<String, dynamic> json) =>
      _$OfferFromJson(json);
  Map<String, dynamic> toJson() => _$OfferToJson(this);
}

@JsonSerializable()
class Coupens {
  String isCoupensApplicable;
  String numberOfCoupensDays;
  String coupensDeductionType;
  String coupensUsageTime;

  Coupens({
    this.isCoupensApplicable,
    this.numberOfCoupensDays,
    this.coupensDeductionType,
    this.coupensUsageTime,
  });

  factory Coupens.fromJson(Map<String, dynamic> json) =>
      _$CoupensFromJson(json);
  Map<String, dynamic> toJson() => _$CoupensToJson(this);
}

@JsonSerializable()
class MerchantProduct {
  String merchantUniqueID;
  String merchantProductID;
  String merchantProductName;
  String vegOrNonVeg;
  AddressInfo addressInfo;
  Offer merchantOffer;
  ImageModel merchantProductImage;
  List<Food> merchantProductList;
  List<Review> reviewList;
  String isHomeDeliveryAvailable;
  String homeDeliveryNearByLimitInKilometer;
  String homeDeliveryCharges;

  MerchantProduct(
    this.merchantUniqueID,
    this.merchantProductID,
    this.merchantProductName,
    this.vegOrNonVeg,
    this.addressInfo,
    this.merchantOffer,
    this.merchantProductImage,
    this.merchantProductList,
    this.reviewList,
    this.isHomeDeliveryAvailable,
    this.homeDeliveryNearByLimitInKilometer,
    this.homeDeliveryCharges,
  );

  factory MerchantProduct.fromJson(Map<String, dynamic> json) =>
      _$MerchantProductFromJson(json);
  Map<String, dynamic> toJson() => _$MerchantProductToJson(this);
}

@JsonSerializable()
class Transaction {
  String transMode;
  String transDate;
  String transTime;
  String requestTransID;
  String responseTransID;
  String transStatus;
  UserOrders userOrders;
  String totalProductPrice;
  String taxAmount;
  String appCharges;
  String transTotalAmount;

  Transaction({
    this.transMode,
    this.transDate,
    this.transTime,
    this.requestTransID,
    this.responseTransID,
    this.transStatus,
    this.userOrders,
    this.totalProductPrice,
    this.taxAmount,
    this.appCharges,
    this.transTotalAmount,
  });

  factory Transaction.fromJson(Map<String, dynamic> json) =>
      _$TransactionFromJson(json);
  Map<String, dynamic> toJson() => _$TransactionToJson(this);
}

@JsonSerializable()
class UserOrders {
  String orderDate;
  String orderTime;
  String userUniqueID;
  String merchantUniqueID;
  String merchantProductID;
  List<String> foodUniqueIDList;

  UserOrders({
    this.orderDate,
    this.orderTime,
    this.userUniqueID,
    this.merchantUniqueID,
    this.merchantProductID,
    this.foodUniqueIDList,
  });

  factory UserOrders.fromJson(Map<String, dynamic> json) =>
      _$UserOrdersFromJson(json);
  Map<String, dynamic> toJson() => _$UserOrdersToJson(this);
}

@JsonSerializable()
class Config {
  String taxPercentage;
  String appPercentage;

  Config({
    this.taxPercentage,
    this.appPercentage,
  });

  factory Config.fromJson(Map<String, dynamic> json) =>
      _$ConfigFromJson(json);
  Map<String, dynamic> toJson() => _$ConfigToJson(this);
}
