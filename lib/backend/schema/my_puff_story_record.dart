import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'my_puff_story_record.g.dart';

abstract class MyPuffStoryRecord
    implements Built<MyPuffStoryRecord, MyPuffStoryRecordBuilder> {
  static Serializer<MyPuffStoryRecord> get serializer =>
      _$myPuffStoryRecordSerializer;

  @BuiltValueField(wireName: 'Writer')
  DocumentReference? get writer;

  String? get photo;

  String? get video;

  @BuiltValueField(wireName: 'numer_Likes')
  int? get numerLikes;

  String? get contents;

  @BuiltValueField(wireName: 'User_Who_Likes')
  DocumentReference? get userWhoLikes;

  @BuiltValueField(wireName: 'Strain')
  String? get strain;

  @BuiltValueField(wireName: 'Mood')
  String? get mood;

  @BuiltValueField(wireName: 'Created_at')
  DateTime? get createdAt;

  @BuiltValueField(wireName: 'writer_thumbnail')
  String? get writerThumbnail;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(MyPuffStoryRecordBuilder builder) => builder
    ..photo = ''
    ..video = ''
    ..numerLikes = 0
    ..contents = ''
    ..strain = ''
    ..mood = ''
    ..writerThumbnail = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('MyPuffStory');

  static Stream<MyPuffStoryRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<MyPuffStoryRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  MyPuffStoryRecord._();
  factory MyPuffStoryRecord([void Function(MyPuffStoryRecordBuilder) updates]) =
      _$MyPuffStoryRecord;

  static MyPuffStoryRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createMyPuffStoryRecordData({
  DocumentReference? writer,
  String? photo,
  String? video,
  int? numerLikes,
  String? contents,
  DocumentReference? userWhoLikes,
  String? strain,
  String? mood,
  DateTime? createdAt,
  String? writerThumbnail,
}) {
  final firestoreData = serializers.toFirestore(
    MyPuffStoryRecord.serializer,
    MyPuffStoryRecord(
      (m) => m
        ..writer = writer
        ..photo = photo
        ..video = video
        ..numerLikes = numerLikes
        ..contents = contents
        ..userWhoLikes = userWhoLikes
        ..strain = strain
        ..mood = mood
        ..createdAt = createdAt
        ..writerThumbnail = writerThumbnail,
    ),
  );

  return firestoreData;
}
