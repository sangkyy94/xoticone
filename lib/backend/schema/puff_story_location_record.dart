import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'puff_story_location_record.g.dart';

abstract class PuffStoryLocationRecord
    implements Built<PuffStoryLocationRecord, PuffStoryLocationRecordBuilder> {
  static Serializer<PuffStoryLocationRecord> get serializer =>
      _$puffStoryLocationRecordSerializer;

  String? get userID;

  String? get userName;

  String? get userPhoto;

  LatLng? get location;

  DocumentReference? get userRef;

  @BuiltValueField(wireName: 'create_At')
  DateTime? get createAt;

  @BuiltValueField(wireName: 'exposure_On-Map')
  bool? get exposureOnMap;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(PuffStoryLocationRecordBuilder builder) =>
      builder
        ..userID = ''
        ..userName = ''
        ..userPhoto = ''
        ..exposureOnMap = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Puff_Story_Location');

  static Stream<PuffStoryLocationRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PuffStoryLocationRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PuffStoryLocationRecord._();
  factory PuffStoryLocationRecord(
          [void Function(PuffStoryLocationRecordBuilder) updates]) =
      _$PuffStoryLocationRecord;

  static PuffStoryLocationRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPuffStoryLocationRecordData({
  String? userID,
  String? userName,
  String? userPhoto,
  LatLng? location,
  DocumentReference? userRef,
  DateTime? createAt,
  bool? exposureOnMap,
}) {
  final firestoreData = serializers.toFirestore(
    PuffStoryLocationRecord.serializer,
    PuffStoryLocationRecord(
      (p) => p
        ..userID = userID
        ..userName = userName
        ..userPhoto = userPhoto
        ..location = location
        ..userRef = userRef
        ..createAt = createAt
        ..exposureOnMap = exposureOnMap,
    ),
  );

  return firestoreData;
}
