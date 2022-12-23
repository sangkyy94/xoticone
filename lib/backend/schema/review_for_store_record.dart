import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'review_for_store_record.g.dart';

abstract class ReviewForStoreRecord
    implements Built<ReviewForStoreRecord, ReviewForStoreRecordBuilder> {
  static Serializer<ReviewForStoreRecord> get serializer =>
      _$reviewForStoreRecordSerializer;

  String? get title;

  String? get contents;

  @BuiltValueField(wireName: 'number_Likes')
  int? get numberLikes;

  @BuiltValueField(wireName: 'Writer')
  DocumentReference? get writer;

  @BuiltValueField(wireName: 'Store')
  DocumentReference? get store;

  @BuiltValueField(wireName: 'created_at')
  DateTime? get createdAt;

  @BuiltValueField(wireName: 'updated_at')
  DateTime? get updatedAt;

  @BuiltValueField(wireName: 'Thumbnail')
  String? get thumbnail;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ReviewForStoreRecordBuilder builder) => builder
    ..title = ''
    ..contents = ''
    ..numberLikes = 0
    ..thumbnail = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ReviewForStore');

  static Stream<ReviewForStoreRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ReviewForStoreRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ReviewForStoreRecord._();
  factory ReviewForStoreRecord(
          [void Function(ReviewForStoreRecordBuilder) updates]) =
      _$ReviewForStoreRecord;

  static ReviewForStoreRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createReviewForStoreRecordData({
  String? title,
  String? contents,
  int? numberLikes,
  DocumentReference? writer,
  DocumentReference? store,
  DateTime? createdAt,
  DateTime? updatedAt,
  String? thumbnail,
}) {
  final firestoreData = serializers.toFirestore(
    ReviewForStoreRecord.serializer,
    ReviewForStoreRecord(
      (r) => r
        ..title = title
        ..contents = contents
        ..numberLikes = numberLikes
        ..writer = writer
        ..store = store
        ..createdAt = createdAt
        ..updatedAt = updatedAt
        ..thumbnail = thumbnail,
    ),
  );

  return firestoreData;
}
