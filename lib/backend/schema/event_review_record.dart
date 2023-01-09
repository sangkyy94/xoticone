import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'event_review_record.g.dart';

abstract class EventReviewRecord
    implements Built<EventReviewRecord, EventReviewRecordBuilder> {
  static Serializer<EventReviewRecord> get serializer =>
      _$eventReviewRecordSerializer;

  String? get title;

  String? get contents;

  @BuiltValueField(wireName: 'number_Likes')
  int? get numberLikes;

  DocumentReference? get writer;

  @BuiltValueField(wireName: 'created_at')
  DateTime? get createdAt;

  @BuiltValueField(wireName: 'updated_at')
  DateTime? get updatedAt;

  String? get thumbnail;

  @BuiltValueField(wireName: 'EventRef')
  DocumentReference? get eventRef;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(EventReviewRecordBuilder builder) => builder
    ..title = ''
    ..contents = ''
    ..numberLikes = 0
    ..thumbnail = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Event_Review');

  static Stream<EventReviewRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<EventReviewRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  EventReviewRecord._();
  factory EventReviewRecord([void Function(EventReviewRecordBuilder) updates]) =
      _$EventReviewRecord;

  static EventReviewRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createEventReviewRecordData({
  String? title,
  String? contents,
  int? numberLikes,
  DocumentReference? writer,
  DateTime? createdAt,
  DateTime? updatedAt,
  String? thumbnail,
  DocumentReference? eventRef,
}) {
  final firestoreData = serializers.toFirestore(
    EventReviewRecord.serializer,
    EventReviewRecord(
      (e) => e
        ..title = title
        ..contents = contents
        ..numberLikes = numberLikes
        ..writer = writer
        ..createdAt = createdAt
        ..updatedAt = updatedAt
        ..thumbnail = thumbnail
        ..eventRef = eventRef,
    ),
  );

  return firestoreData;
}
