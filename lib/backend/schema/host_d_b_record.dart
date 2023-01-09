import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'host_d_b_record.g.dart';

abstract class HostDBRecord
    implements Built<HostDBRecord, HostDBRecordBuilder> {
  static Serializer<HostDBRecord> get serializer => _$hostDBRecordSerializer;

  @BuiltValueField(wireName: 'event_Name')
  String? get eventName;

  @BuiltValueField(wireName: 'requested_Date')
  DateTime? get requestedDate;

  bool? get requested;

  bool? get approved;

  @BuiltValueField(wireName: 'approved_Date')
  DateTime? get approvedDate;

  @BuiltValueField(wireName: 'name_Host')
  String? get nameHost;

  DocumentReference? get hostRef;

  DocumentReference? get eventRef;

  @BuiltValueField(wireName: 'Phonenumber_Host')
  String? get phonenumberHost;

  @BuiltValueField(wireName: 'event-Thumbnail')
  String? get eventThumbnail;

  @BuiltValueField(wireName: 'host_Thumbnail')
  String? get hostThumbnail;

  @BuiltValueField(wireName: 'email_Host')
  String? get emailHost;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(HostDBRecordBuilder builder) => builder
    ..eventName = ''
    ..requested = false
    ..approved = false
    ..nameHost = ''
    ..phonenumberHost = ''
    ..eventThumbnail = ''
    ..hostThumbnail = ''
    ..emailHost = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Host_DB');

  static Stream<HostDBRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<HostDBRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  HostDBRecord._();
  factory HostDBRecord([void Function(HostDBRecordBuilder) updates]) =
      _$HostDBRecord;

  static HostDBRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createHostDBRecordData({
  String? eventName,
  DateTime? requestedDate,
  bool? requested,
  bool? approved,
  DateTime? approvedDate,
  String? nameHost,
  DocumentReference? hostRef,
  DocumentReference? eventRef,
  String? phonenumberHost,
  String? eventThumbnail,
  String? hostThumbnail,
  String? emailHost,
}) {
  final firestoreData = serializers.toFirestore(
    HostDBRecord.serializer,
    HostDBRecord(
      (h) => h
        ..eventName = eventName
        ..requestedDate = requestedDate
        ..requested = requested
        ..approved = approved
        ..approvedDate = approvedDate
        ..nameHost = nameHost
        ..hostRef = hostRef
        ..eventRef = eventRef
        ..phonenumberHost = phonenumberHost
        ..eventThumbnail = eventThumbnail
        ..hostThumbnail = hostThumbnail
        ..emailHost = emailHost,
    ),
  );

  return firestoreData;
}
