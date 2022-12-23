import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'store_types_struct.g.dart';

abstract class StoreTypesStruct
    implements Built<StoreTypesStruct, StoreTypesStructBuilder> {
  static Serializer<StoreTypesStruct> get serializer =>
      _$storeTypesStructSerializer;

  @BuiltValueField(wireName: 'Store_Type_Name')
  String? get storeTypeName;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(StoreTypesStructBuilder builder) => builder
    ..storeTypeName = ''
    ..firestoreUtilData = FirestoreUtilData();

  StoreTypesStruct._();
  factory StoreTypesStruct([void Function(StoreTypesStructBuilder) updates]) =
      _$StoreTypesStruct;
}

StoreTypesStruct createStoreTypesStruct({
  String? storeTypeName,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    StoreTypesStruct(
      (s) => s
        ..storeTypeName = storeTypeName
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

StoreTypesStruct? updateStoreTypesStruct(
  StoreTypesStruct? storeTypes, {
  bool clearUnsetFields = true,
}) =>
    storeTypes != null
        ? (storeTypes.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addStoreTypesStructData(
  Map<String, dynamic> firestoreData,
  StoreTypesStruct? storeTypes,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (storeTypes == null) {
    return;
  }
  if (storeTypes.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && storeTypes.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final storeTypesData = getStoreTypesFirestoreData(storeTypes, forFieldValue);
  final nestedData = storeTypesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = storeTypes.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getStoreTypesFirestoreData(
  StoreTypesStruct? storeTypes, [
  bool forFieldValue = false,
]) {
  if (storeTypes == null) {
    return {};
  }
  final firestoreData =
      serializers.toFirestore(StoreTypesStruct.serializer, storeTypes);

  // Add any Firestore field values
  storeTypes.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getStoreTypesListFirestoreData(
  List<StoreTypesStruct>? storeTypess,
) =>
    storeTypess?.map((s) => getStoreTypesFirestoreData(s, true)).toList() ?? [];
