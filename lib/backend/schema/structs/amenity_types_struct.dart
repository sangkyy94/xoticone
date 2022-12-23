import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'amenity_types_struct.g.dart';

abstract class AmenityTypesStruct
    implements Built<AmenityTypesStruct, AmenityTypesStructBuilder> {
  static Serializer<AmenityTypesStruct> get serializer =>
      _$amenityTypesStructSerializer;

  @BuiltValueField(wireName: 'Amenity_Name')
  String? get amenityName;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(AmenityTypesStructBuilder builder) => builder
    ..amenityName = ''
    ..firestoreUtilData = FirestoreUtilData();

  AmenityTypesStruct._();
  factory AmenityTypesStruct(
          [void Function(AmenityTypesStructBuilder) updates]) =
      _$AmenityTypesStruct;
}

AmenityTypesStruct createAmenityTypesStruct({
  String? amenityName,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AmenityTypesStruct(
      (a) => a
        ..amenityName = amenityName
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

AmenityTypesStruct? updateAmenityTypesStruct(
  AmenityTypesStruct? amenityTypes, {
  bool clearUnsetFields = true,
}) =>
    amenityTypes != null
        ? (amenityTypes.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addAmenityTypesStructData(
  Map<String, dynamic> firestoreData,
  AmenityTypesStruct? amenityTypes,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (amenityTypes == null) {
    return;
  }
  if (amenityTypes.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && amenityTypes.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final amenityTypesData =
      getAmenityTypesFirestoreData(amenityTypes, forFieldValue);
  final nestedData =
      amenityTypesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = amenityTypes.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getAmenityTypesFirestoreData(
  AmenityTypesStruct? amenityTypes, [
  bool forFieldValue = false,
]) {
  if (amenityTypes == null) {
    return {};
  }
  final firestoreData =
      serializers.toFirestore(AmenityTypesStruct.serializer, amenityTypes);

  // Add any Firestore field values
  amenityTypes.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAmenityTypesListFirestoreData(
  List<AmenityTypesStruct>? amenityTypess,
) =>
    amenityTypess?.map((a) => getAmenityTypesFirestoreData(a, true)).toList() ??
    [];
