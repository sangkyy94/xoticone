import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'cities_record.g.dart';

abstract class CitiesRecord
    implements Built<CitiesRecord, CitiesRecordBuilder> {
  static Serializer<CitiesRecord> get serializer => _$citiesRecordSerializer;

  @BuiltValueField(wireName: 'name_city')
  String? get nameCity;

  @BuiltValueField(wireName: 'photo_main')
  String? get photoMain;

  @BuiltValueField(wireName: 'photo_thumb')
  String? get photoThumb;

  DocumentReference? get suburb;

  bool? get exposure;

  @BuiltValueField(wireName: 'created_at')
  DateTime? get createdAt;

  @BuiltValueField(wireName: 'Exposure_Order')
  int? get exposureOrder;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CitiesRecordBuilder builder) => builder
    ..nameCity = ''
    ..photoMain = ''
    ..photoThumb = ''
    ..exposure = false
    ..exposureOrder = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Cities');

  static Stream<CitiesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CitiesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CitiesRecord._();
  factory CitiesRecord([void Function(CitiesRecordBuilder) updates]) =
      _$CitiesRecord;

  static CitiesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCitiesRecordData({
  String? nameCity,
  String? photoMain,
  String? photoThumb,
  DocumentReference? suburb,
  bool? exposure,
  DateTime? createdAt,
  int? exposureOrder,
}) {
  final firestoreData = serializers.toFirestore(
    CitiesRecord.serializer,
    CitiesRecord(
      (c) => c
        ..nameCity = nameCity
        ..photoMain = photoMain
        ..photoThumb = photoThumb
        ..suburb = suburb
        ..exposure = exposure
        ..createdAt = createdAt
        ..exposureOrder = exposureOrder,
    ),
  );

  return firestoreData;
}
