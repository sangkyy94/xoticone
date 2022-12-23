import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'search_record_by_strain_record.g.dart';

abstract class SearchRecordByStrainRecord
    implements
        Built<SearchRecordByStrainRecord, SearchRecordByStrainRecordBuilder> {
  static Serializer<SearchRecordByStrainRecord> get serializer =>
      _$searchRecordByStrainRecordSerializer;

  @BuiltValueField(wireName: 'strain_Name')
  String? get strainName;

  @BuiltValueField(wireName: 'Search_Keyword')
  String? get searchKeyword;

  @BuiltValueField(wireName: 'user_ID')
  String? get userID;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(SearchRecordByStrainRecordBuilder builder) =>
      builder
        ..strainName = ''
        ..searchKeyword = ''
        ..userID = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('SearchRecordByStrain');

  static Stream<SearchRecordByStrainRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<SearchRecordByStrainRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  SearchRecordByStrainRecord._();
  factory SearchRecordByStrainRecord(
          [void Function(SearchRecordByStrainRecordBuilder) updates]) =
      _$SearchRecordByStrainRecord;

  static SearchRecordByStrainRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createSearchRecordByStrainRecordData({
  String? strainName,
  String? searchKeyword,
  String? userID,
}) {
  final firestoreData = serializers.toFirestore(
    SearchRecordByStrainRecord.serializer,
    SearchRecordByStrainRecord(
      (s) => s
        ..strainName = strainName
        ..searchKeyword = searchKeyword
        ..userID = userID,
    ),
  );

  return firestoreData;
}
