import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'strain_types_record.g.dart';

abstract class StrainTypesRecord
    implements Built<StrainTypesRecord, StrainTypesRecordBuilder> {
  static Serializer<StrainTypesRecord> get serializer =>
      _$strainTypesRecordSerializer;

  String? get nameType;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(StrainTypesRecordBuilder builder) =>
      builder..nameType = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('strainTypes');

  static Stream<StrainTypesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<StrainTypesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  StrainTypesRecord._();
  factory StrainTypesRecord([void Function(StrainTypesRecordBuilder) updates]) =
      _$StrainTypesRecord;

  static StrainTypesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createStrainTypesRecordData({
  String? nameType,
}) {
  final firestoreData = serializers.toFirestore(
    StrainTypesRecord.serializer,
    StrainTypesRecord(
      (s) => s..nameType = nameType,
    ),
  );

  return firestoreData;
}
