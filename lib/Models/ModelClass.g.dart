// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ModelClass.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImageModel _$ImageModelFromJson(Map<String, dynamic> json) {
  return ImageModel(
    imageID: json['imageID'] as String,
    date: json['date'] as String,
    imageUrl: json['imageUrl'] as String,
  );
}

Map<String, dynamic> _$ImageModelToJson(ImageModel instance) =>
    <String, dynamic>{
      'imageID': instance.imageID,
      'date': instance.date,
      'imageUrl': instance.imageUrl,
    };

AppSettings _$AppSettingsFromJson(Map<String, dynamic> json) {
  return AppSettings(
    userUniqueID: json['userUniqueID'] as String,
    appLang: json['appLang'] as String,
    isPushNotificationEnable: json['isPushNotificationEnable'] as String,
  );
}

Map<String, dynamic> _$AppSettingsToJson(AppSettings instance) =>
    <String, dynamic>{
      'userUniqueID': instance.userUniqueID,
      'appLang': instance.appLang,
      'isPushNotificationEnable': instance.isPushNotificationEnable,
    };

BasicInfo _$BasicInfoFromJson(Map<String, dynamic> json) {
  return BasicInfo(
    userUniqueID: json['userUniqueID'] as String,
    fisrtName: json['fisrtName'] as String,
    lastName: json['lastName'] as String,
    emailID: json['emailID'] as String,
    mobileNumber: json['mobileNumber'] as String,
  );
}

Map<String, dynamic> _$BasicInfoToJson(BasicInfo instance) => <String, dynamic>{
      'userUniqueID': instance.userUniqueID,
      'fisrtName': instance.fisrtName,
      'lastName': instance.lastName,
      'emailID': instance.emailID,
      'mobileNumber': instance.mobileNumber,
    };

AddressInfo _$AddressInfoFromJson(Map<String, dynamic> json) {
  return AddressInfo(
    userUniqueID: json['userUniqueID'] as String,
    addressLine1: json['addressLine1'] as String,
    addressLine2: json['addressLine2'] as String,
    addressLine3: json['addressLine3'] as String,
    city: json['city'] as String,
    district: json['district'] as String,
    state: json['state'] as String,
    nation: json['nation'] as String,
    latitude: json['latitude'] as String,
    longitude: json['longitude'] as String,
  );
}

Map<String, dynamic> _$AddressInfoToJson(AddressInfo instance) =>
    <String, dynamic>{
      'userUniqueID': instance.userUniqueID,
      'addressLine1': instance.addressLine1,
      'addressLine2': instance.addressLine2,
      'addressLine3': instance.addressLine3,
      'city': instance.city,
      'district': instance.district,
      'state': instance.state,
      'nation': instance.nation,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };

AuthInfo _$AuthInfoFromJson(Map<String, dynamic> json) {
  return AuthInfo(
    userUniqueID: json['userUniqueID'] as String,
    password: json['password'] as String,
    googleID: json['googleID'] as String,
    googleAuthToken: json['googleAuthToken'] as String,
    faceBookID: json['faceBookID'] as String,
    faceBookAuthToken: json['faceBookAuthToken'] as String,
  );
}

Map<String, dynamic> _$AuthInfoToJson(AuthInfo instance) => <String, dynamic>{
      'userUniqueID': instance.userUniqueID,
      'password': instance.password,
      'googleID': instance.googleID,
      'googleAuthToken': instance.googleAuthToken,
      'faceBookID': instance.faceBookID,
      'faceBookAuthToken': instance.faceBookAuthToken,
    };

ReferralInfo _$ReferralInfoFromJson(Map<String, dynamic> json) {
  return ReferralInfo(
    userUniqueID: json['userUniqueID'] as String,
    referralCode: json['referralCode'] as String,
    myReferralCode: json['myReferralCode'] as String,
  );
}

Map<String, dynamic> _$ReferralInfoToJson(ReferralInfo instance) =>
    <String, dynamic>{
      'userUniqueID': instance.userUniqueID,
      'referralCode': instance.referralCode,
      'myReferralCode': instance.myReferralCode,
    };

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
    userUniqueID: json['userUniqueID'] as String,
    basicInfo: json['basicInfo'] == null
        ? null
        : BasicInfo.fromJson(json['basicInfo'] as Map<String, dynamic>),
    addressInfo: json['addressInfo'] == null
        ? null
        : AddressInfo.fromJson(json['addressInfo'] as Map<String, dynamic>),
    authInfo: json['authInfo'] == null
        ? null
        : AuthInfo.fromJson(json['authInfo'] as Map<String, dynamic>),
    referralInfo: json['referralInfo'] == null
        ? null
        : ReferralInfo.fromJson(json['referralInfo'] as Map<String, dynamic>),
    profileImage: json['profileImage'] == null
        ? null
        : ImageModel.fromJson(json['profileImage'] as Map<String, dynamic>),
    otherImageList: (json['otherImageList'] as List)
        ?.map((e) =>
            e == null ? null : ImageModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    userTagsImageList: (json['userTagsImageList'] as List)
        ?.map((e) =>
            e == null ? null : ImageModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    favouriteMerchantProductIDList:
        (json['favouriteMerchantProductIDList'] as List)
            ?.map((e) => e as String)
            ?.toList(),
  );
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'userUniqueID': instance.userUniqueID,
      'basicInfo': instance.basicInfo,
      'addressInfo': instance.addressInfo,
      'authInfo': instance.authInfo,
      'referralInfo': instance.referralInfo,
      'profileImage': instance.profileImage,
      'otherImageList': instance.otherImageList,
      'userTagsImageList': instance.userTagsImageList,
      'favouriteMerchantProductIDList': instance.favouriteMerchantProductIDList,
    };

BankInfo _$BankInfoFromJson(Map<String, dynamic> json) {
  return BankInfo(
    userUniqueID: json['userUniqueID'] as String,
    merchantUniqueID: json['merchantUniqueID'] as String,
    accountNumber: json['accountNumber'] as String,
    ifscCode: json['ifscCode'] as String,
  );
}

Map<String, dynamic> _$BankInfoToJson(BankInfo instance) => <String, dynamic>{
      'userUniqueID': instance.userUniqueID,
      'merchantUniqueID': instance.merchantUniqueID,
      'accountNumber': instance.accountNumber,
      'ifscCode': instance.ifscCode,
    };

KYCInfo _$KYCInfoFromJson(Map<String, dynamic> json) {
  return KYCInfo(
    userUniqueID: json['userUniqueID'] as String,
    merchantUniqueID: json['merchantUniqueID'] as String,
    aadharNumber: json['aadharNumber'] as String,
    isAadharNumberVerified: json['isAadharNumberVerified'] as String,
    authaadharToken: json['authaadharToken'] as String,
    panNumber: json['panNumber'] as String,
    isPanNumberVerified: json['isPanNumberVerified'] as String,
    authPanToken: json['authPanToken'] as String,
  );
}

Map<String, dynamic> _$KYCInfoToJson(KYCInfo instance) => <String, dynamic>{
      'userUniqueID': instance.userUniqueID,
      'merchantUniqueID': instance.merchantUniqueID,
      'aadharNumber': instance.aadharNumber,
      'isAadharNumberVerified': instance.isAadharNumberVerified,
      'authaadharToken': instance.authaadharToken,
      'panNumber': instance.panNumber,
      'isPanNumberVerified': instance.isPanNumberVerified,
      'authPanToken': instance.authPanToken,
    };

MerchantUser _$MerchantUserFromJson(Map<String, dynamic> json) {
  return MerchantUser(
    merchantUniqueID: json['merchantUniqueID'] as String,
    basicInfo: json['basicInfo'] == null
        ? null
        : BasicInfo.fromJson(json['basicInfo'] as Map<String, dynamic>),
    addressInfo: json['addressInfo'] == null
        ? null
        : AddressInfo.fromJson(json['addressInfo'] as Map<String, dynamic>),
    authInfo: json['authInfo'] == null
        ? null
        : AuthInfo.fromJson(json['authInfo'] as Map<String, dynamic>),
    referralInfo: json['referralInfo'] == null
        ? null
        : ReferralInfo.fromJson(json['referralInfo'] as Map<String, dynamic>),
    profileImage: json['profileImage'] == null
        ? null
        : ImageModel.fromJson(json['profileImage'] as Map<String, dynamic>),
    otherImageList: (json['otherImageList'] as List)
        ?.map((e) =>
            e == null ? null : ImageModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    userTagsImageList: (json['userTagsImageList'] as List)
        ?.map((e) =>
            e == null ? null : ImageModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    bankInfo: json['bankInfo'] == null
        ? null
        : BankInfo.fromJson(json['bankInfo'] as Map<String, dynamic>),
    kycInfo: json['kycInfo'] == null
        ? null
        : KYCInfo.fromJson(json['kycInfo'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MerchantUserToJson(MerchantUser instance) =>
    <String, dynamic>{
      'merchantUniqueID': instance.merchantUniqueID,
      'basicInfo': instance.basicInfo,
      'addressInfo': instance.addressInfo,
      'authInfo': instance.authInfo,
      'referralInfo': instance.referralInfo,
      'profileImage': instance.profileImage,
      'otherImageList': instance.otherImageList,
      'userTagsImageList': instance.userTagsImageList,
      'bankInfo': instance.bankInfo,
      'kycInfo': instance.kycInfo,
    };

Review _$ReviewFromJson(Map<String, dynamic> json) {
  return Review(
    merchantUniqueID: json['merchantUniqueID'] as String,
    merchantProductID: json['merchantProductID'] as String,
    userUniqueID: json['userUniqueID'] as String,
    reviewComment: json['reviewComment'] as String,
    rating: json['rating'] as String,
    dateOfCreated: json['dateOfCreated'] as String,
    dateOfUpdated: json['dateOfUpdated'] as String,
  );
}

Map<String, dynamic> _$ReviewToJson(Review instance) => <String, dynamic>{
      'merchantUniqueID': instance.merchantUniqueID,
      'merchantProductID': instance.merchantProductID,
      'userUniqueID': instance.userUniqueID,
      'reviewComment': instance.reviewComment,
      'rating': instance.rating,
      'dateOfCreated': instance.dateOfCreated,
      'dateOfUpdated': instance.dateOfUpdated,
    };

Food _$FoodFromJson(Map<String, dynamic> json) {
  return Food(
    merchantUniqueID: json['merchantUniqueID'] as String,
    merchantProductID: json['merchantProductID'] as String,
    foodUniqueID: json['foodUniqueID'] as String,
    foodName: json['foodName'] as String,
    foodPrice: json['foodPrice'] as String,
    imageCategoryUniqueID: json['imageCategoryUniqueID'] as String,
    profileImage: json['profileImage'] == null
        ? null
        : ImageModel.fromJson(json['profileImage'] as Map<String, dynamic>),
    otherImageList: (json['otherImageList'] as List)
        ?.map((e) =>
            e == null ? null : ImageModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    foodOffer: json['foodOffer'] == null
        ? null
        : Offer.fromJson(json['foodOffer'] as Map<String, dynamic>),
    foodVegOrNonVeg: json['foodVegOrNonVeg'] as String,
    coupens: json['coupens'] == null
        ? null
        : Coupens.fromJson(json['coupens'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$FoodToJson(Food instance) => <String, dynamic>{
      'merchantUniqueID': instance.merchantUniqueID,
      'merchantProductID': instance.merchantProductID,
      'foodUniqueID': instance.foodUniqueID,
      'foodName': instance.foodName,
      'foodPrice': instance.foodPrice,
      'imageCategoryUniqueID': instance.imageCategoryUniqueID,
      'profileImage': instance.profileImage,
      'otherImageList': instance.otherImageList,
      'foodOffer': instance.foodOffer,
      'foodVegOrNonVeg': instance.foodVegOrNonVeg,
      'coupens': instance.coupens,
    };

Offer _$OfferFromJson(Map<String, dynamic> json) {
  return Offer(
    offerName: json['offerName'] as String,
    offerCode: json['offerCode'] as String,
    discount: json['discount'] as String,
    maximumCashback: json['maximumCashback'] as String,
    minimumTransAmount: json['minimumTransAmount'] as String,
  );
}

Map<String, dynamic> _$OfferToJson(Offer instance) => <String, dynamic>{
      'offerName': instance.offerName,
      'offerCode': instance.offerCode,
      'discount': instance.discount,
      'maximumCashback': instance.maximumCashback,
      'minimumTransAmount': instance.minimumTransAmount,
    };

Coupens _$CoupensFromJson(Map<String, dynamic> json) {
  return Coupens(
    isCoupensApplicable: json['isCoupensApplicable'] as String,
    numberOfCoupensDays: json['numberOfCoupensDays'] as String,
    coupensDeductionType: json['coupensDeductionType'] as String,
    coupensUsageTime: json['coupensUsageTime'] as String,
  );
}

Map<String, dynamic> _$CoupensToJson(Coupens instance) => <String, dynamic>{
      'isCoupensApplicable': instance.isCoupensApplicable,
      'numberOfCoupensDays': instance.numberOfCoupensDays,
      'coupensDeductionType': instance.coupensDeductionType,
      'coupensUsageTime': instance.coupensUsageTime,
    };

MerchantProduct _$MerchantProductFromJson(Map<String, dynamic> json) {
  return MerchantProduct(
    json['merchantUniqueID'] as String,
    json['merchantProductID'] as String,
    json['merchantProductName'] as String,
    json['vegOrNonVeg'] as String,
    json['addressInfo'] == null
        ? null
        : AddressInfo.fromJson(json['addressInfo'] as Map<String, dynamic>),
    json['merchantOffer'] == null
        ? null
        : Offer.fromJson(json['merchantOffer'] as Map<String, dynamic>),
    json['merchantProductImage'] == null
        ? null
        : ImageModel.fromJson(
            json['merchantProductImage'] as Map<String, dynamic>),
    (json['merchantProductList'] as List)
        ?.map(
            (e) => e == null ? null : Food.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['reviewList'] as List)
        ?.map((e) =>
            e == null ? null : Review.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['isHomeDeliveryAvailable'] as String,
    json['homeDeliveryNearByLimitInKilometer'] as String,
    json['homeDeliveryCharges'] as String,
  );
}

Map<String, dynamic> _$MerchantProductToJson(MerchantProduct instance) =>
    <String, dynamic>{
      'merchantUniqueID': instance.merchantUniqueID,
      'merchantProductID': instance.merchantProductID,
      'merchantProductName': instance.merchantProductName,
      'vegOrNonVeg': instance.vegOrNonVeg,
      'addressInfo': instance.addressInfo,
      'merchantOffer': instance.merchantOffer,
      'merchantProductImage': instance.merchantProductImage,
      'merchantProductList': instance.merchantProductList,
      'reviewList': instance.reviewList,
      'isHomeDeliveryAvailable': instance.isHomeDeliveryAvailable,
      'homeDeliveryNearByLimitInKilometer':
          instance.homeDeliveryNearByLimitInKilometer,
      'homeDeliveryCharges': instance.homeDeliveryCharges,
    };

Transaction _$TransactionFromJson(Map<String, dynamic> json) {
  return Transaction(
    transMode: json['transMode'] as String,
    transDate: json['transDate'] as String,
    transTime: json['transTime'] as String,
    requestTransID: json['requestTransID'] as String,
    responseTransID: json['responseTransID'] as String,
    transStatus: json['transStatus'] as String,
    userOrders: json['userOrders'] == null
        ? null
        : UserOrders.fromJson(json['userOrders'] as Map<String, dynamic>),
    totalProductPrice: json['totalProductPrice'] as String,
    taxAmount: json['taxAmount'] as String,
    appCharges: json['appCharges'] as String,
    transTotalAmount: json['transTotalAmount'] as String,
  );
}

Map<String, dynamic> _$TransactionToJson(Transaction instance) =>
    <String, dynamic>{
      'transMode': instance.transMode,
      'transDate': instance.transDate,
      'transTime': instance.transTime,
      'requestTransID': instance.requestTransID,
      'responseTransID': instance.responseTransID,
      'transStatus': instance.transStatus,
      'userOrders': instance.userOrders,
      'totalProductPrice': instance.totalProductPrice,
      'taxAmount': instance.taxAmount,
      'appCharges': instance.appCharges,
      'transTotalAmount': instance.transTotalAmount,
    };

UserOrders _$UserOrdersFromJson(Map<String, dynamic> json) {
  return UserOrders(
    orderDate: json['orderDate'] as String,
    orderTime: json['orderTime'] as String,
    userUniqueID: json['userUniqueID'] as String,
    merchantUniqueID: json['merchantUniqueID'] as String,
    merchantProductID: json['merchantProductID'] as String,
    foodUniqueIDList:
        (json['foodUniqueIDList'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$UserOrdersToJson(UserOrders instance) =>
    <String, dynamic>{
      'orderDate': instance.orderDate,
      'orderTime': instance.orderTime,
      'userUniqueID': instance.userUniqueID,
      'merchantUniqueID': instance.merchantUniqueID,
      'merchantProductID': instance.merchantProductID,
      'foodUniqueIDList': instance.foodUniqueIDList,
    };

Config _$ConfigFromJson(Map<String, dynamic> json) {
  return Config(
    taxPercentage: json['taxPercentage'] as String,
    appPercentage: json['appPercentage'] as String,
  );
}

Map<String, dynamic> _$ConfigToJson(Config instance) => <String, dynamic>{
      'taxPercentage': instance.taxPercentage,
      'appPercentage': instance.appPercentage,
    };
