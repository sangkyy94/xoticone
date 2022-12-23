import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'amenity_types_record.g.dart';

abstract class AmenityTypesRecord
    implements Built<AmenityTypesRecord, AmenityTypesRecordBuilder> {
  static Serializer<AmenityTypesRecord> get serializer =>
      _$amenityTypesRecordSerializer;

  @BuiltValueField(wireName: 'type_Name')
  String? get typeName;

  @BuiltValueField(wireName: 'created_at')
  DateTime? get createdAt;

  @BuiltValueField(wireName: 'updated_at')
  DateTime? get updatedAt;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(AmenityTypesRecordBuilder builder) =>
      builder..typeName = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Amenity_Types');

  static Stream<AmenityTypesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<AmenityTypesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  AmenityTypesRecord._();
  factory AmenityTypesRecord(
          [void Function(AmenityTypesRecordBuilder) updates]) =
      _$AmenityTypesRecord;

  static AmenityTypesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createAmenityTypesRecordData({
  String? typeName,
  DateTime? createdAt,
  DateTime? updatedAt,
}) {
  final firestoreData = serializers.toFirestore(
    AmenityTypesRecord.serializer,
    AmenityTypesRecord(
      (a) => a
        ..typeName = typeName
        ..createdAt = createdAt
        ..updatedAt = updatedAt,
    ),
  );

  return firestoreData;
}
