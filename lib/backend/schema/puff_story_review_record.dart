import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'puff_story_review_record.g.dart';

abstract class PuffStoryReviewRecord
    implements Built<PuffStoryReviewRecord, PuffStoryReviewRecordBuilder> {
  static Serializer<PuffStoryReviewRecord> get serializer =>
      _$puffStoryReviewRecordSerializer;

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

  @BuiltValueField(wireName: 'PuffStory')
  DocumentReference? get puffStory;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(PuffStoryReviewRecordBuilder builder) =>
      builder
        ..title = ''
        ..contents = ''
        ..numberLikes = 0
        ..thumbnail = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Puff_Story_Review');

  static Stream<PuffStoryReviewRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PuffStoryReviewRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PuffStoryReviewRecord._();
  factory PuffStoryReviewRecord(
          [void Function(PuffStoryReviewRecordBuilder) updates]) =
      _$PuffStoryReviewRecord;

  static PuffStoryReviewRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPuffStoryReviewRecordData({
  String? title,
  String? contents,
  int? numberLikes,
  DocumentReference? writer,
  DateTime? createdAt,
  DateTime? updatedAt,
  String? thumbnail,
  DocumentReference? puffStory,
}) {
  final firestoreData = serializers.toFirestore(
    PuffStoryReviewRecord.serializer,
    PuffStoryReviewRecord(
      (p) => p
        ..title = title
        ..contents = contents
        ..numberLikes = numberLikes
        ..writer = writer
        ..createdAt = createdAt
        ..updatedAt = updatedAt
        ..thumbnail = thumbnail
        ..puffStory = puffStory,
    ),
  );

  return firestoreData;
}
