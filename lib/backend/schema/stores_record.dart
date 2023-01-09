import 'dart:async';

import 'package:from_css_color/from_css_color.dart';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'stores_record.g.dart';

abstract class StoresRecord
    implements Built<StoresRecord, StoresRecordBuilder> {
  static Serializer<StoresRecord> get serializer => _$storesRecordSerializer;

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

  @BuiltValueField(wireName: 'favorited_By2')
  BuiltList<DocumentReference>? get favoritedBy2;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(StoresRecordBuilder builder) => builder
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
    ..serviceCategory = ''
    ..favoritedBy2 = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Stores');

  static Stream<StoresRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<StoresRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static StoresRecord fromAlgolia(AlgoliaObjectSnapshot snapshot) =>
      StoresRecord(
        (c) => c
          ..suburb = snapshot.data['suburb']
          ..metadata = snapshot.data['metadata']
          ..address = snapshot.data['address']
          ..geolocation = safeGet(() => LatLng(
                snapshot.data['_geoloc']['lat'],
                snapshot.data['_geoloc']['lng'],
              ))
          ..numLikes = snapshot.data['num_Likes']?.round()
          ..cityRef = safeGet(() => toRef(snapshot.data['CityRef']))
          ..createdAt = safeGet(() =>
              DateTime.fromMillisecondsSinceEpoch(snapshot.data['created_at']))
          ..updatedAt = safeGet(() =>
              DateTime.fromMillisecondsSinceEpoch(snapshot.data['updated_at']))
          ..description = snapshot.data['description']
          ..ownerRef = safeGet(() => toRef(snapshot.data['Owner_Ref']))
          ..ownerID = snapshot.data['Owner_ID']
          ..numCoupon = snapshot.data['Num_Coupon']?.round()
          ..numStamp = snapshot.data['Num_Stamp']?.round()
          ..storeUUID = snapshot.data['Store_UUID']
          ..nameStore = snapshot.data['nameStore']
          ..businessHour = snapshot.data['business_Hour']
          ..suburbRef = safeGet(() => toRef(snapshot.data['suburbRef']))
          ..phoneNumber = snapshot.data['phone_Number']
          ..thumbnail = snapshot.data['thumbnail']
          ..mainPhoto = snapshot.data['main_Photo']
          ..topBannerPhoto = snapshot.data['topBanner_Photo']
          ..bgPhoto = snapshot.data['bg_photo']
          ..numberRating = snapshot.data['Number_Rating']?.toDouble()
          ..favoritedBy = safeGet(() => toRef(snapshot.data['favorited_By']))
          ..strainProductList = safeGet(() => ListBuilder(
              snapshot.data['strain_Product_List'].map((s) => toRef(s))))
          ..nameCity = snapshot.data['name_City']
          ..serviceCategoryList = safeGet(() => ListBuilder(
              snapshot.data['service_Category_List'].map((s) => toRef(s))))
          ..serviceCategory = snapshot.data['service_Category']
          ..favoritedBy2 = safeGet(() =>
              ListBuilder(snapshot.data['favorited_By2'].map((s) => toRef(s))))
          ..ffRef = StoresRecord.collection.doc(snapshot.objectID),
      );

  static Future<List<StoresRecord>> search(
          {String? term,
          FutureOr<LatLng>? location,
          int? maxResults,
          double? searchRadiusMeters}) =>
      FFAlgoliaManager.instance
          .algoliaQuery(
            index: 'Stores',
            term: term,
            maxResults: maxResults,
            location: location,
            searchRadiusMeters: searchRadiusMeters,
          )
          .then((r) => r.map(fromAlgolia).toList());

  StoresRecord._();
  factory StoresRecord([void Function(StoresRecordBuilder) updates]) =
      _$StoresRecord;

  static StoresRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createStoresRecordData({
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
    StoresRecord.serializer,
    StoresRecord(
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
        ..serviceCategory = serviceCategory
        ..favoritedBy2 = null,
    ),
  );

  return firestoreData;
}
