import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'service_categories_record.g.dart';

abstract class ServiceCategoriesRecord
    implements Built<ServiceCategoriesRecord, ServiceCategoriesRecordBuilder> {
  static Serializer<ServiceCategoriesRecord> get serializer =>
      _$serviceCategoriesRecordSerializer;

  bool? get open;

  bool? get closed;

  @BuiltValueField(wireName: 'name_Category')
  String? get nameCategory;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ServiceCategoriesRecordBuilder builder) =>
      builder
        ..open = false
        ..closed = false
        ..nameCategory = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ServiceCategories');

  static Stream<ServiceCategoriesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ServiceCategoriesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ServiceCategoriesRecord._();
  factory ServiceCategoriesRecord(
          [void Function(ServiceCategoriesRecordBuilder) updates]) =
      _$ServiceCategoriesRecord;

  static ServiceCategoriesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createServiceCategoriesRecordData({
  bool? open,
  bool? closed,
  String? nameCategory,
}) {
  final firestoreData = serializers.toFirestore(
    ServiceCategoriesRecord.serializer,
    ServiceCategoriesRecord(
      (s) => s
        ..open = open
        ..closed = closed
        ..nameCategory = nameCategory,
    ),
  );

  return firestoreData;
}
