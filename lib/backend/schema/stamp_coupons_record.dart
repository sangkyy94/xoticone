import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'stamp_coupons_record.g.dart';

abstract class StampCouponsRecord
    implements Built<StampCouponsRecord, StampCouponsRecordBuilder> {
  static Serializer<StampCouponsRecord> get serializer =>
      _$stampCouponsRecordSerializer;

  @BuiltValueField(wireName: 'Coupon_Name')
  String? get couponName;

  @BuiltValueField(wireName: 'Stamp_Count')
  int? get stampCount;

  @BuiltValueField(wireName: 'Expire_Date')
  DateTime? get expireDate;

  @BuiltValueField(wireName: 'Received')
  bool? get received;

  @BuiltValueField(wireName: 'Expired')
  bool? get expired;

  @BuiltValueField(wireName: 'Discarded')
  bool? get discarded;

  @BuiltValueField(wireName: 'Rewarded')
  bool? get rewarded;

  @BuiltValueField(wireName: 'Store_Ref')
  DocumentReference? get storeRef;

  @BuiltValueField(wireName: 'Store_Name')
  String? get storeName;

  @BuiltValueField(wireName: 'Customer_Ref')
  DocumentReference? get customerRef;

  @BuiltValueField(wireName: 'Customer_Id')
  String? get customerId;

  @BuiltValueField(wireName: 'Coupon_Id')
  String? get couponId;

  @BuiltValueField(wireName: 'Coupon_Serial')
  int? get couponSerial;

  @BuiltValueField(wireName: 'Store_Owner_Ref')
  DocumentReference? get storeOwnerRef;

  @BuiltValueField(wireName: 'Store_Owner_Id')
  String? get storeOwnerId;

  @BuiltValueField(wireName: 'Created_at')
  DateTime? get createdAt;

  @BuiltValueField(wireName: 'Updated_at')
  DateTime? get updatedAt;

  @BuiltValueField(wireName: 'User_Thumbnail')
  String? get userThumbnail;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(StampCouponsRecordBuilder builder) => builder
    ..couponName = ''
    ..stampCount = 0
    ..received = false
    ..expired = false
    ..discarded = false
    ..rewarded = false
    ..storeName = ''
    ..customerId = ''
    ..couponId = ''
    ..couponSerial = 0
    ..storeOwnerId = ''
    ..userThumbnail = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Stamp_Coupons');

  static Stream<StampCouponsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<StampCouponsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  StampCouponsRecord._();
  factory StampCouponsRecord(
          [void Function(StampCouponsRecordBuilder) updates]) =
      _$StampCouponsRecord;

  static StampCouponsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createStampCouponsRecordData({
  String? couponName,
  int? stampCount,
  DateTime? expireDate,
  bool? received,
  bool? expired,
  bool? discarded,
  bool? rewarded,
  DocumentReference? storeRef,
  String? storeName,
  DocumentReference? customerRef,
  String? customerId,
  String? couponId,
  int? couponSerial,
  DocumentReference? storeOwnerRef,
  String? storeOwnerId,
  DateTime? createdAt,
  DateTime? updatedAt,
  String? userThumbnail,
}) {
  final firestoreData = serializers.toFirestore(
    StampCouponsRecord.serializer,
    StampCouponsRecord(
      (s) => s
        ..couponName = couponName
        ..stampCount = stampCount
        ..expireDate = expireDate
        ..received = received
        ..expired = expired
        ..discarded = discarded
        ..rewarded = rewarded
        ..storeRef = storeRef
        ..storeName = storeName
        ..customerRef = customerRef
        ..customerId = customerId
        ..couponId = couponId
        ..couponSerial = couponSerial
        ..storeOwnerRef = storeOwnerRef
        ..storeOwnerId = storeOwnerId
        ..createdAt = createdAt
        ..updatedAt = updatedAt
        ..userThumbnail = userThumbnail,
    ),
  );

  return firestoreData;
}
