import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'participant_d_b_record.g.dart';

abstract class ParticipantDBRecord
    implements Built<ParticipantDBRecord, ParticipantDBRecordBuilder> {
  static Serializer<ParticipantDBRecord> get serializer =>
      _$participantDBRecordSerializer;

  @BuiltValueField(wireName: 'event_Name')
  String? get eventName;

  @BuiltValueField(wireName: 'join_Requested')
  bool? get joinRequested;

  @BuiltValueField(wireName: 'requested_Date')
  DateTime? get requestedDate;

  @BuiltValueField(wireName: 'join_Approved')
  bool? get joinApproved;

  @BuiltValueField(wireName: 'approved_Date')
  DateTime? get approvedDate;

  DocumentReference? get participantRef;

  DocumentReference? get eventRef;

  @BuiltValueField(wireName: 'participant_Name')
  String? get participantName;

  @BuiltValueField(wireName: 'participant_Email')
  String? get participantEmail;

  @BuiltValueField(wireName: 'participant_thumbnail')
  String? get participantThumbnail;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ParticipantDBRecordBuilder builder) => builder
    ..eventName = ''
    ..joinRequested = false
    ..joinApproved = false
    ..participantName = ''
    ..participantEmail = ''
    ..participantThumbnail = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Participant_DB');

  static Stream<ParticipantDBRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ParticipantDBRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ParticipantDBRecord._();
  factory ParticipantDBRecord(
          [void Function(ParticipantDBRecordBuilder) updates]) =
      _$ParticipantDBRecord;

  static ParticipantDBRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createParticipantDBRecordData({
  String? eventName,
  bool? joinRequested,
  DateTime? requestedDate,
  bool? joinApproved,
  DateTime? approvedDate,
  DocumentReference? participantRef,
  DocumentReference? eventRef,
  String? participantName,
  String? participantEmail,
  String? participantThumbnail,
}) {
  final firestoreData = serializers.toFirestore(
    ParticipantDBRecord.serializer,
    ParticipantDBRecord(
      (p) => p
        ..eventName = eventName
        ..joinRequested = joinRequested
        ..requestedDate = requestedDate
        ..joinApproved = joinApproved
        ..approvedDate = approvedDate
        ..participantRef = participantRef
        ..eventRef = eventRef
        ..participantName = participantName
        ..participantEmail = participantEmail
        ..participantThumbnail = participantThumbnail,
    ),
  );

  return firestoreData;
}
