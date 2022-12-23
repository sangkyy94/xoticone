import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'suburbs_record.g.dart';

abstract class SuburbsRecord
    implements Built<SuburbsRecord, SuburbsRecordBuilder> {
  static Serializer<SuburbsRecord> get serializer => _$suburbsRecordSerializer;

  String? get suburrbName;

  @BuiltValueField(wireName: 'Photo1')
  String? get photo1;

  @BuiltValueField(wireName: 'PhotoThumbnail')
  String? get photoThumbnail;

  String? get description;

  LatLng? get location;

  bool? get hide;

  DocumentReference? get cityRef;

  String? get city;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(SuburbsRecordBuilder builder) => builder
    ..suburrbName = ''
    ..photo1 = ''
    ..photoThumbnail = ''
    ..description = ''
    ..hide = false
    ..city = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Suburbs');

  static Stream<SuburbsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<SuburbsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  SuburbsRecord._();
  factory SuburbsRecord([void Function(SuburbsRecordBuilder) updates]) =
      _$SuburbsRecord;

  static SuburbsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createSuburbsRecordData({
  String? suburrbName,
  String? photo1,
  String? photoThumbnail,
  String? description,
  LatLng? location,
  bool? hide,
  DocumentReference? cityRef,
  String? city,
}) {
  final firestoreData = serializers.toFirestore(
    SuburbsRecord.serializer,
    SuburbsRecord(
      (s) => s
        ..suburrbName = suburrbName
        ..photo1 = photo1
        ..photoThumbnail = photoThumbnail
        ..description = description
        ..location = location
        ..hide = hide
        ..cityRef = cityRef
        ..city = city,
    ),
  );

  return firestoreData;
}
