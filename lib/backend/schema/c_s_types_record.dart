import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'c_s_types_record.g.dart';

abstract class CSTypesRecord
    implements Built<CSTypesRecord, CSTypesRecordBuilder> {
  static Serializer<CSTypesRecord> get serializer => _$cSTypesRecordSerializer;

  @BuiltValueField(wireName: 'name_Type')
  String? get nameType;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CSTypesRecordBuilder builder) =>
      builder..nameType = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('CS-Types');

  static Stream<CSTypesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CSTypesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CSTypesRecord._();
  factory CSTypesRecord([void Function(CSTypesRecordBuilder) updates]) =
      _$CSTypesRecord;

  static CSTypesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCSTypesRecordData({
  String? nameType,
}) {
  final firestoreData = serializers.toFirestore(
    CSTypesRecord.serializer,
    CSTypesRecord(
      (c) => c..nameType = nameType,
    ),
  );

  return firestoreData;
}
