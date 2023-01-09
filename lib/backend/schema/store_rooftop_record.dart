import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'store_rooftop_record.g.dart';

abstract class StoreRooftopRecord
    implements Built<StoreRooftopRecord, StoreRooftopRecordBuilder> {
  static Serializer<StoreRooftopRecord> get serializer =>
      _$storeRooftopRecordSerializer;

  String? get suburb;

  String? get metadata;

  String? get address;

  LatLng? get geolocation;

  @BuiltValueField(wireName: 'num_Likes')
  int? get numLikes;

  @BuiltValueField(wireName: 'CityRef')
  DocumentReference? get cityRef;

  @BuiltValueField(wireName: 'created_at')
  DateTime? get createdAt;

  @BuiltValueField(wireName: 'updated_at')
  DateTime? get updatedAt;

  String? get description;

  @BuiltValueField(wireName: 'Owner_Ref')
  DocumentReference? get ownerRef;

  @BuiltValueField(wireName: 'Owner_ID')
  String? get ownerID;

  @BuiltValueField(wireName: 'Num_Coupon')
  int? get numCoupon;

  @BuiltValueField(wireName: 'Num_Stamp')
  int? get numStamp;

  @BuiltValueField(wireName: 'Store_UUID')
  String? get storeUUID;

  String? get nameStore;

  @BuiltValueField(wireName: 'business_Hour')
  String? get businessHour;

  DocumentReference? get suburbRef;

  @BuiltValueField(wireName: 'phone_Number')
  String? get phoneNumber;

  String? get thumbnail;

  @BuiltValueField(wireName: 'main_Photo')
  String? get mainPhoto;

  @BuiltValueField(wireName: 'topBanner_Photo')
  String? get topBannerPhoto;

  @BuiltValueField(wireName: 'bg_photo')
  String? get bgPhoto;

  @BuiltValueField(wireName: 'Number_Rating')
  double? get numberRating;

  @BuiltValueField(wireName: 'favorited_By')
  DocumentReference? get favoritedBy;

  @BuiltValueField(wireName: 'strain_Product_List')
  BuiltList<DocumentReference>? get strainProductList;

  @BuiltValueField(wireName: 'name_City')
  String? get nameCity;

  @BuiltValueField(wireName: 'service_Category_List')
  BuiltList<DocumentReference>? get serviceCategoryList;

  @BuiltValueField(wireName: 'service_Category')
  String? get serviceCategory;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(StoreRooftopRecordBuilder builder) => builder
    ..suburb = ''
    ..metadata = ''
    ..address = ''
    ..numLikes = 0
    ..description = ''
    ..ownerID = ''
    ..numCoupon = 0
    ..numStamp = 0
    ..storeUUID = ''
    ..nameStore = ''
    ..businessHour = ''
    ..phoneNumber = ''
    ..thumbnail = ''
    ..mainPhoto = ''
    ..topBannerPhoto = ''
    ..bgPhoto = ''
    ..numberRating = 0.0
    ..strainProductList = ListBuilder()
    ..nameCity = ''
    ..serviceCategoryList = ListBuilder()
    ..serviceCategory = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Store_Rooftop');

  static Stream<StoreRooftopRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<StoreRooftopRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  StoreRooftopRecord._();
  factory StoreRooftopRecord(
          [void Function(StoreRooftopRecordBuilder) updates]) =
      _$StoreRooftopRecord;

  static StoreRooftopRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createStoreRooftopRecordData({
  String? suburb,
  String? metadata,
  String? address,
  LatLng? geolocation,
  int? numLikes,
  DocumentReference? cityRef,
  DateTime? createdAt,
  DateTime? updatedAt,
  String? description,
  DocumentReference? ownerRef,
  String? ownerID,
  int? numCoupon,
  int? numStamp,
  String? storeUUID,
  String? nameStore,
  String? businessHour,
  DocumentReference? suburbRef,
  String? phoneNumber,
  String? thumbnail,
  String? mainPhoto,
  String? topBannerPhoto,
  String? bgPhoto,
  double? numberRating,
  DocumentReference? favoritedBy,
  String? nameCity,
  String? serviceCategory,
}) {
  final firestoreData = serializers.toFirestore(
    StoreRooftopRecord.serializer,
    StoreRooftopRecord(
      (s) => s
        ..suburb = suburb
        ..metadata = metadata
        ..address = address
        ..geolocation = geolocation
        ..numLikes = numLikes
        ..cityRef = cityRef
        ..createdAt = createdAt
        ..updatedAt = updatedAt
        ..description = description
        ..ownerRef = ownerRef
        ..ownerID = ownerID
        ..numCoupon = numCoupon
        ..numStamp = numStamp
        ..storeUUID = storeUUID
        ..nameStore = nameStore
        ..businessHour = businessHour
        ..suburbRef = suburbRef
        ..phoneNumber = phoneNumber
        ..thumbnail = thumbnail
        ..mainPhoto = mainPhoto
        ..topBannerPhoto = topBannerPhoto
        ..bgPhoto = bgPhoto
        ..numberRating = numberRating
        ..favoritedBy = favoritedBy
        ..strainProductList = null
        ..nameCity = nameCity
        ..serviceCategoryList = null
        ..serviceCategory = serviceCategory,
    ),
  );

  return firestoreData;
}
