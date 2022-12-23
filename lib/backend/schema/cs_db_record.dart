import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'cs_db_record.g.dart';

abstract class CsDbRecord implements Built<CsDbRecord, CsDbRecordBuilder> {
  static Serializer<CsDbRecord> get serializer => _$csDbRecordSerializer;

  @BuiltValueField(wireName: 'user_Name')
  String? get userName;

  @BuiltValueField(wireName: 'user_ID')
  String? get userID;

  String? get title;

  String? get content;

  @BuiltValueField(wireName: 'ticket_Number')
  String? get ticketNumber;

  bool? get opened;

  bool? get closed;

  @BuiltValueField(wireName: 'created_At')
  DateTime? get createdAt;

  @BuiltValueField(wireName: 'closed_At')
  DateTime? get closedAt;

  @BuiltValueField(wireName: 'cs-Type')
  String? get csType;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CsDbRecordBuilder builder) => builder
    ..userName = ''
    ..userID = ''
    ..title = ''
    ..content = ''
    ..ticketNumber = ''
    ..opened = false
    ..closed = false
    ..csType = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('CS_DB');

  static Stream<CsDbRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CsDbRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CsDbRecord._();
  factory CsDbRecord([void Function(CsDbRecordBuilder) updates]) = _$CsDbRecord;

  static CsDbRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCsDbRecordData({
  String? userName,
  String? userID,
  String? title,
  String? content,
  String? ticketNumber,
  bool? opened,
  bool? closed,
  DateTime? createdAt,
  DateTime? closedAt,
  String? csType,
}) {
  final firestoreData = serializers.toFirestore(
    CsDbRecord.serializer,
    CsDbRecord(
      (c) => c
        ..userName = userName
        ..userID = userID
        ..title = title
        ..content = content
        ..ticketNumber = ticketNumber
        ..opened = opened
        ..closed = closed
        ..createdAt = createdAt
        ..closedAt = closedAt
        ..csType = csType,
    ),
  );

  return firestoreData;
}
