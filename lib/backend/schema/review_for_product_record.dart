import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'review_for_product_record.g.dart';

abstract class ReviewForProductRecord
    implements Built<ReviewForProductRecord, ReviewForProductRecordBuilder> {
  static Serializer<ReviewForProductRecord> get serializer =>
      _$reviewForProductRecordSerializer;

  String? get title;

  String? get contents;

  @BuiltValueField(wireName: 'number_Likes')
  int? get numberLikes;

  DocumentReference? get writer;

  DocumentReference? get product;

  @BuiltValueField(wireName: 'created_at')
  DateTime? get createdAt;

  @BuiltValueField(wireName: 'updated_at')
  DateTime? get updatedAt;

  String? get thumbnail;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ReviewForProductRecordBuilder builder) =>
      builder
        ..title = ''
        ..contents = ''
        ..numberLikes = 0
        ..thumbnail = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ReviewForProduct');

  static Stream<ReviewForProductRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ReviewForProductRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ReviewForProductRecord._();
  factory ReviewForProductRecord(
          [void Function(ReviewForProductRecordBuilder) updates]) =
      _$ReviewForProductRecord;

  static ReviewForProductRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createReviewForProductRecordData({
  String? title,
  String? contents,
  int? numberLikes,
  DocumentReference? writer,
  DocumentReference? product,
  DateTime? createdAt,
  DateTime? updatedAt,
  String? thumbnail,
}) {
  final firestoreData = serializers.toFirestore(
    ReviewForProductRecord.serializer,
    ReviewForProductRecord(
      (r) => r
        ..title = title
        ..contents = contents
        ..numberLikes = numberLikes
        ..writer = writer
        ..product = product
        ..createdAt = createdAt
        ..updatedAt = updatedAt
        ..thumbnail = thumbnail,
    ),
  );

  return firestoreData;
}
