import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'product_types_record.g.dart';

abstract class ProductTypesRecord
    implements Built<ProductTypesRecord, ProductTypesRecordBuilder> {
  static Serializer<ProductTypesRecord> get serializer =>
      _$productTypesRecordSerializer;

  @BuiltValueField(wireName: 'Type_Name')
  String? get typeName;

  @BuiltValueField(wireName: 'Created_at')
  DateTime? get createdAt;

  @BuiltValueField(wireName: 'Updated_at')
  DateTime? get updatedAt;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ProductTypesRecordBuilder builder) =>
      builder..typeName = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Product_Types');

  static Stream<ProductTypesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ProductTypesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ProductTypesRecord._();
  factory ProductTypesRecord(
          [void Function(ProductTypesRecordBuilder) updates]) =
      _$ProductTypesRecord;

  static ProductTypesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createProductTypesRecordData({
  String? typeName,
  DateTime? createdAt,
  DateTime? updatedAt,
}) {
  final firestoreData = serializers.toFirestore(
    ProductTypesRecord.serializer,
    ProductTypesRecord(
      (p) => p
        ..typeName = typeName
        ..createdAt = createdAt
        ..updatedAt = updatedAt,
    ),
  );

  return firestoreData;
}
