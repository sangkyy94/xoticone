import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'events_record.g.dart';

abstract class EventsRecord
    implements Built<EventsRecord, EventsRecordBuilder> {
  static Serializer<EventsRecord> get serializer => _$eventsRecordSerializer;

  @BuiltValueField(wireName: 'event_Title')
  String? get eventTitle;

  @BuiltValueField(wireName: 'event-Date')
  DateTime? get eventDate;

  @BuiltValueField(wireName: 'venue_Name')
  String? get venueName;

  @BuiltValueField(wireName: 'venue_Address')
  String? get venueAddress;

  @BuiltValueField(wireName: 'dress_Code')
  String? get dressCode;

  String? get restriction;

  @BuiltValueField(wireName: 'event_Description')
  String? get eventDescription;

  @BuiltValueField(wireName: 'main_Language')
  String? get mainLanguage;

  @BuiltValueField(wireName: 'name-Host')
  String? get nameHost;

  DocumentReference? get hostRef;

  @BuiltValueField(wireName: 'phone_Host')
  String? get phoneHost;

  @BuiltValueField(wireName: 'facebook_Host')
  String? get facebookHost;

  @BuiltValueField(wireName: 'ID-Host')
  String? get iDHost;

  @BuiltValueField(wireName: 'Photo1')
  String? get photo1;

  @BuiltValueField(wireName: 'host_Requirement')
  String? get hostRequirement;

  @BuiltValueField(wireName: 'host_Matched')
  bool? get hostMatched;

  @BuiltValueField(wireName: 'Closed')
  bool? get closed;

  @BuiltValueField(wireName: 'Open')
  bool? get open;

  @BuiltValueField(wireName: 'photo_Thumbnail')
  String? get photoThumbnail;

  @BuiltValueField(wireName: 'Min_Pax')
  int? get minPax;

  @BuiltValueField(wireName: 'Max_Pax')
  int? get maxPax;

  @BuiltValueField(wireName: 'host_Thumbnail')
  String? get hostThumbnail;

  @BuiltValueField(wireName: 'number_Participants')
  int? get numberParticipants;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(EventsRecordBuilder builder) => builder
    ..eventTitle = ''
    ..venueName = ''
    ..venueAddress = ''
    ..dressCode = ''
    ..restriction = ''
    ..eventDescription = ''
    ..mainLanguage = ''
    ..nameHost = ''
    ..phoneHost = ''
    ..facebookHost = ''
    ..iDHost = ''
    ..photo1 = ''
    ..hostRequirement = ''
    ..hostMatched = false
    ..closed = false
    ..open = false
    ..photoThumbnail = ''
    ..minPax = 0
    ..maxPax = 0
    ..hostThumbnail = ''
    ..numberParticipants = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Events');

  static Stream<EventsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<EventsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  EventsRecord._();
  factory EventsRecord([void Function(EventsRecordBuilder) updates]) =
      _$EventsRecord;

  static EventsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createEventsRecordData({
  String? eventTitle,
  DateTime? eventDate,
  String? venueName,
  String? venueAddress,
  String? dressCode,
  String? restriction,
  String? eventDescription,
  String? mainLanguage,
  String? nameHost,
  DocumentReference? hostRef,
  String? phoneHost,
  String? facebookHost,
  String? iDHost,
  String? photo1,
  String? hostRequirement,
  bool? hostMatched,
  bool? closed,
  bool? open,
  String? photoThumbnail,
  int? minPax,
  int? maxPax,
  String? hostThumbnail,
  int? numberParticipants,
}) {
  final firestoreData = serializers.toFirestore(
    EventsRecord.serializer,
    EventsRecord(
      (e) => e
        ..eventTitle = eventTitle
        ..eventDate = eventDate
        ..venueName = venueName
        ..venueAddress = venueAddress
        ..dressCode = dressCode
        ..restriction = restriction
        ..eventDescription = eventDescription
        ..mainLanguage = mainLanguage
        ..nameHost = nameHost
        ..hostRef = hostRef
        ..phoneHost = phoneHost
        ..facebookHost = facebookHost
        ..iDHost = iDHost
        ..photo1 = photo1
        ..hostRequirement = hostRequirement
        ..hostMatched = hostMatched
        ..closed = closed
        ..open = open
        ..photoThumbnail = photoThumbnail
        ..minPax = minPax
        ..maxPax = maxPax
        ..hostThumbnail = hostThumbnail
        ..numberParticipants = numberParticipants,
    ),
  );

  return firestoreData;
}
