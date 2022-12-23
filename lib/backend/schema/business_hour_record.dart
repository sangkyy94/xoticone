import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'business_hour_record.g.dart';

abstract class BusinessHourRecord
    implements Built<BusinessHourRecord, BusinessHourRecordBuilder> {
  static Serializer<BusinessHourRecord> get serializer =>
      _$businessHourRecordSerializer;

  @BuiltValueField(wireName: 'store_Name')
  String? get storeName;

  @BuiltValueField(wireName: 'Mon_Open')
  DateTime? get monOpen;

  @BuiltValueField(wireName: 'Mon_Close')
  DateTime? get monClose;

  @BuiltValueField(wireName: 'Tue_Open')
  DateTime? get tueOpen;

  @BuiltValueField(wireName: 'Tue_Close')
  DateTime? get tueClose;

  @BuiltValueField(wireName: 'Wed_Open')
  DateTime? get wedOpen;

  @BuiltValueField(wireName: 'Wed_Close')
  DateTime? get wedClose;

  @BuiltValueField(wireName: 'Thu_Open')
  DateTime? get thuOpen;

  @BuiltValueField(wireName: 'Thu_Close')
  DateTime? get thuClose;

  @BuiltValueField(wireName: 'Fri_Open')
  DateTime? get friOpen;

  @BuiltValueField(wireName: 'Fri_Close')
  DateTime? get friClose;

  @BuiltValueField(wireName: 'Sat_Open')
  DateTime? get satOpen;

  @BuiltValueField(wireName: 'Sat_Close')
  DateTime? get satClose;

  @BuiltValueField(wireName: 'Sun_Open')
  DateTime? get sunOpen;

  @BuiltValueField(wireName: 'Sun-Close')
  DateTime? get sunClose;

  @BuiltValueField(wireName: 'BizHourr')
  BuiltList<String>? get bizHourr;

  DocumentReference? get storeRef;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(BusinessHourRecordBuilder builder) => builder
    ..storeName = ''
    ..bizHourr = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('BusinessHour');

  static Stream<BusinessHourRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<BusinessHourRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  BusinessHourRecord._();
  factory BusinessHourRecord(
          [void Function(BusinessHourRecordBuilder) updates]) =
      _$BusinessHourRecord;

  static BusinessHourRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createBusinessHourRecordData({
  String? storeName,
  DateTime? monOpen,
  DateTime? monClose,
  DateTime? tueOpen,
  DateTime? tueClose,
  DateTime? wedOpen,
  DateTime? wedClose,
  DateTime? thuOpen,
  DateTime? thuClose,
  DateTime? friOpen,
  DateTime? friClose,
  DateTime? satOpen,
  DateTime? satClose,
  DateTime? sunOpen,
  DateTime? sunClose,
  DocumentReference? storeRef,
}) {
  final firestoreData = serializers.toFirestore(
    BusinessHourRecord.serializer,
    BusinessHourRecord(
      (b) => b
        ..storeName = storeName
        ..monOpen = monOpen
        ..monClose = monClose
        ..tueOpen = tueOpen
        ..tueClose = tueClose
        ..wedOpen = wedOpen
        ..wedClose = wedClose
        ..thuOpen = thuOpen
        ..thuClose = thuClose
        ..friOpen = friOpen
        ..friClose = friClose
        ..satOpen = satOpen
        ..satClose = satClose
        ..sunOpen = sunOpen
        ..sunClose = sunClose
        ..bizHourr = null
        ..storeRef = storeRef,
    ),
  );

  return firestoreData;
}
