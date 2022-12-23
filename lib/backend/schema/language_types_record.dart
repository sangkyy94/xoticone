import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'language_types_record.g.dart';

abstract class LanguageTypesRecord
    implements Built<LanguageTypesRecord, LanguageTypesRecordBuilder> {
  static Serializer<LanguageTypesRecord> get serializer =>
      _$languageTypesRecordSerializer;

  @BuiltValueField(wireName: 'type-Name')
  String? get typeName;

  @BuiltValueField(wireName: 'created_at')
  DateTime? get createdAt;

  @BuiltValueField(wireName: 'updated_at')
  DateTime? get updatedAt;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(LanguageTypesRecordBuilder builder) =>
      builder..typeName = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Language_Types');

  static Stream<LanguageTypesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<LanguageTypesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  LanguageTypesRecord._();
  factory LanguageTypesRecord(
          [void Function(LanguageTypesRecordBuilder) updates]) =
      _$LanguageTypesRecord;

  static LanguageTypesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createLanguageTypesRecordData({
  String? typeName,
  DateTime? createdAt,
  DateTime? updatedAt,
}) {
  final firestoreData = serializers.toFirestore(
    LanguageTypesRecord.serializer,
    LanguageTypesRecord(
      (l) => l
        ..typeName = typeName
        ..createdAt = createdAt
        ..updatedAt = updatedAt,
    ),
  );

  return firestoreData;
}
