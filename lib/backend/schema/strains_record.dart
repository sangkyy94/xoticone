import 'dart:async';

import 'package:from_css_color/from_css_color.dart';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'strains_record.g.dart';

abstract class StrainsRecord
    implements Built<StrainsRecord, StrainsRecordBuilder> {
  static Serializer<StrainsRecord> get serializer => _$strainsRecordSerializer;

  String? get strainName;

  String? get aka;

  @BuiltValueField(wireName: 'THC')
  int? get thc;

  @BuiltValueField(wireName: 'CBD')
  int? get cbd;

  @BuiltValueField(wireName: 'CBG')
  int? get cbg;

  @BuiltValueField(wireName: 'CBC')
  int? get cbc;

  String? get strainType;

  @BuiltValueField(wireName: 'strain_Type_Ref')
  DocumentReference? get strainTypeRef;

  @BuiltValueField(wireName: 'THCV')
  int? get thcv;

  String? get terpene;

  String? get thumbnail75;

  String? get photo150;

  @BuiltValueField(wireName: 'ImageTest')
  String? get imageTest;

  @BuiltValueField(wireName: 'number_Searcch')
  int? get numberSearcch;

  DocumentReference? get mood;

  @BuiltValueField(wireName: 'favorited_By')
  BuiltList<DocumentReference>? get favoritedBy;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(StrainsRecordBuilder builder) => builder
    ..strainName = ''
    ..aka = ''
    ..thc = 0
    ..cbd = 0
    ..cbg = 0
    ..cbc = 0
    ..strainType = ''
    ..thcv = 0
    ..terpene = ''
    ..thumbnail75 = ''
    ..photo150 = ''
    ..imageTest = ''
    ..numberSearcch = 0
    ..favoritedBy = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('strains');

  static Stream<StrainsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<StrainsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static StrainsRecord fromAlgolia(AlgoliaObjectSnapshot snapshot) =>
      StrainsRecord(
        (c) => c
          ..strainName = snapshot.data['strainName']
          ..aka = snapshot.data['aka']
          ..thc = snapshot.data['THC']?.round()
          ..cbd = snapshot.data['CBD']?.round()
          ..cbg = snapshot.data['CBG']?.round()
          ..cbc = snapshot.data['CBC']?.round()
          ..strainType = snapshot.data['strainType']
          ..strainTypeRef =
              safeGet(() => toRef(snapshot.data['strain_Type_Ref']))
          ..thcv = snapshot.data['THCV']?.round()
          ..terpene = snapshot.data['terpene']
          ..thumbnail75 = snapshot.data['thumbnail75']
          ..photo150 = snapshot.data['photo150']
          ..imageTest = snapshot.data['ImageTest']
          ..numberSearcch = snapshot.data['number_Searcch']?.round()
          ..mood = safeGet(() => toRef(snapshot.data['mood']))
          ..favoritedBy = safeGet(() =>
              ListBuilder(snapshot.data['favorited_By'].map((s) => toRef(s))))
          ..ffRef = StrainsRecord.collection.doc(snapshot.objectID),
      );

  static Future<List<StrainsRecord>> search(
          {String? term,
          FutureOr<LatLng>? location,
          int? maxResults,
          double? searchRadiusMeters}) =>
      FFAlgoliaManager.instance
          .algoliaQuery(
            index: 'strains',
            term: term,
            maxResults: maxResults,
            location: location,
            searchRadiusMeters: searchRadiusMeters,
          )
          .then((r) => r.map(fromAlgolia).toList());

  StrainsRecord._();
  factory StrainsRecord([void Function(StrainsRecordBuilder) updates]) =
      _$StrainsRecord;

  static StrainsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createStrainsRecordData({
  String? strainName,
  String? aka,
  int? thc,
  int? cbd,
  int? cbg,
  int? cbc,
  String? strainType,
  DocumentReference? strainTypeRef,
  int? thcv,
  String? terpene,
  String? thumbnail75,
  String? photo150,
  String? imageTest,
  int? numberSearcch,
  DocumentReference? mood,
}) {
  final firestoreData = serializers.toFirestore(
    StrainsRecord.serializer,
    StrainsRecord(
      (s) => s
        ..strainName = strainName
        ..aka = aka
        ..thc = thc
        ..cbd = cbd
        ..cbg = cbg
        ..cbc = cbc
        ..strainType = strainType
        ..strainTypeRef = strainTypeRef
        ..thcv = thcv
        ..terpene = terpene
        ..thumbnail75 = thumbnail75
        ..photo150 = photo150
        ..imageTest = imageTest
        ..numberSearcch = numberSearcch
        ..mood = mood
        ..favoritedBy = null,
    ),
  );

  return firestoreData;
}
