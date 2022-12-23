import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'terpene_types_record.g.dart';

abstract class TerpeneTypesRecord
    implements Built<TerpeneTypesRecord, TerpeneTypesRecordBuilder> {
  static Serializer<TerpeneTypesRecord> get serializer =>
      _$terpeneTypesRecordSerializer;

  @BuiltValueField(wireName: 'Terpene_Name')
  String? get terpeneName;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(TerpeneTypesRecordBuilder builder) =>
      builder..terpeneName = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('terpeneTypes');

  static Stream<TerpeneTypesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<TerpeneTypesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  TerpeneTypesRecord._();
  factory TerpeneTypesRecord(
          [void Function(TerpeneTypesRecordBuilder) updates]) =
      _$TerpeneTypesRecord;

  static TerpeneTypesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createTerpeneTypesRecordData({
  String? terpeneName,
}) {
  final firestoreData = serializers.toFirestore(
    TerpeneTypesRecord.serializer,
    TerpeneTypesRecord(
      (t) => t..terpeneName = terpeneName,
    ),
  );

  return firestoreData;
}
