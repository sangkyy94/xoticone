import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'notice_record.g.dart';

abstract class NoticeRecord
    implements Built<NoticeRecord, NoticeRecordBuilder> {
  static Serializer<NoticeRecord> get serializer => _$noticeRecordSerializer;

  @BuiltValueField(wireName: 'Title')
  String? get title;

  @BuiltValueField(wireName: 'Contents')
  String? get contents;

  @BuiltValueField(wireName: 'WriterRef')
  DocumentReference? get writerRef;

  @BuiltValueField(wireName: 'Writer')
  String? get writer;

  @BuiltValueField(wireName: 'Create_at')
  DateTime? get createAt;

  @BuiltValueField(wireName: 'Updated_at')
  DateTime? get updatedAt;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(NoticeRecordBuilder builder) => builder
    ..title = ''
    ..contents = ''
    ..writer = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Notice');

  static Stream<NoticeRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<NoticeRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  NoticeRecord._();
  factory NoticeRecord([void Function(NoticeRecordBuilder) updates]) =
      _$NoticeRecord;

  static NoticeRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createNoticeRecordData({
  String? title,
  String? contents,
  DocumentReference? writerRef,
  String? writer,
  DateTime? createAt,
  DateTime? updatedAt,
}) {
  final firestoreData = serializers.toFirestore(
    NoticeRecord.serializer,
    NoticeRecord(
      (n) => n
        ..title = title
        ..contents = contents
        ..writerRef = writerRef
        ..writer = writer
        ..createAt = createAt
        ..updatedAt = updatedAt,
    ),
  );

  return firestoreData;
}
