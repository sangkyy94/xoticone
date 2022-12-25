import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'notification_record.g.dart';

abstract class NotificationRecord
    implements Built<NotificationRecord, NotificationRecordBuilder> {
  static Serializer<NotificationRecord> get serializer =>
      _$notificationRecordSerializer;

  @BuiltValueField(wireName: 'Title')
  String? get title;

  @BuiltValueField(wireName: 'Content')
  String? get content;

  @BuiltValueField(wireName: 'Sender')
  DocumentReference? get sender;

  BuiltList<DocumentReference>? get recipient;

  @BuiltValueField(wireName: 'Category')
  String? get category;

  @BuiltValueField(wireName: 'Created_At')
  DateTime? get createdAt;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(NotificationRecordBuilder builder) => builder
    ..title = ''
    ..content = ''
    ..recipient = ListBuilder()
    ..category = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Notification');

  static Stream<NotificationRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<NotificationRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  NotificationRecord._();
  factory NotificationRecord(
          [void Function(NotificationRecordBuilder) updates]) =
      _$NotificationRecord;

  static NotificationRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createNotificationRecordData({
  String? title,
  String? content,
  DocumentReference? sender,
  String? category,
  DateTime? createdAt,
}) {
  final firestoreData = serializers.toFirestore(
    NotificationRecord.serializer,
    NotificationRecord(
      (n) => n
        ..title = title
        ..content = content
        ..sender = sender
        ..recipient = null
        ..category = category
        ..createdAt = createdAt,
    ),
  );

  return firestoreData;
}
