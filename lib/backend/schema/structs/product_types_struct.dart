import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'product_types_struct.g.dart';

abstract class ProductTypesStruct
    implements Built<ProductTypesStruct, ProductTypesStructBuilder> {
  static Serializer<ProductTypesStruct> get serializer =>
      _$productTypesStructSerializer;

  @BuiltValueField(wireName: 'Product_Name')
  String? get productName;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(ProductTypesStructBuilder builder) => builder
    ..productName = ''
    ..firestoreUtilData = FirestoreUtilData();

  ProductTypesStruct._();
  factory ProductTypesStruct(
          [void Function(ProductTypesStructBuilder) updates]) =
      _$ProductTypesStruct;
}

ProductTypesStruct createProductTypesStruct({
  String? productName,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ProductTypesStruct(
      (p) => p
        ..productName = productName
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

ProductTypesStruct? updateProductTypesStruct(
  ProductTypesStruct? productTypes, {
  bool clearUnsetFields = true,
}) =>
    productTypes != null
        ? (productTypes.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addProductTypesStructData(
  Map<String, dynamic> firestoreData,
  ProductTypesStruct? productTypes,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (productTypes == null) {
    return;
  }
  if (productTypes.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && productTypes.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final productTypesData =
      getProductTypesFirestoreData(productTypes, forFieldValue);
  final nestedData =
      productTypesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = productTypes.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getProductTypesFirestoreData(
  ProductTypesStruct? productTypes, [
  bool forFieldValue = false,
]) {
  if (productTypes == null) {
    return {};
  }
  final firestoreData =
      serializers.toFirestore(ProductTypesStruct.serializer, productTypes);

  // Add any Firestore field values
  productTypes.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getProductTypesListFirestoreData(
  List<ProductTypesStruct>? productTypess,
) =>
    productTypess?.map((p) => getProductTypesFirestoreData(p, true)).toList() ??
    [];
