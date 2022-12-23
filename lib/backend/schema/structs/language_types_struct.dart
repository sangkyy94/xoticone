import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'language_types_struct.g.dart';

abstract class LanguageTypesStruct
    implements Built<LanguageTypesStruct, LanguageTypesStructBuilder> {
  static Serializer<LanguageTypesStruct> get serializer =>
      _$languageTypesStructSerializer;

  @BuiltValueField(wireName: 'Laguage_Name')
  BuiltList<String>? get laguageName;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(LanguageTypesStructBuilder builder) => builder
    ..laguageName = ListBuilder()
    ..firestoreUtilData = FirestoreUtilData();

  LanguageTypesStruct._();
  factory LanguageTypesStruct(
          [void Function(LanguageTypesStructBuilder) updates]) =
      _$LanguageTypesStruct;
}

LanguageTypesStruct createLanguageTypesStruct({
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    LanguageTypesStruct(
      (l) => l
        ..laguageName = null
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

LanguageTypesStruct? updateLanguageTypesStruct(
  LanguageTypesStruct? languageTypes, {
  bool clearUnsetFields = true,
}) =>
    languageTypes != null
        ? (languageTypes.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addLanguageTypesStructData(
  Map<String, dynamic> firestoreData,
  LanguageTypesStruct? languageTypes,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (languageTypes == null) {
    return;
  }
  if (languageTypes.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && languageTypes.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final languageTypesData =
      getLanguageTypesFirestoreData(languageTypes, forFieldValue);
  final nestedData =
      languageTypesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = languageTypes.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getLanguageTypesFirestoreData(
  LanguageTypesStruct? languageTypes, [
  bool forFieldValue = false,
]) {
  if (languageTypes == null) {
    return {};
  }
  final firestoreData =
      serializers.toFirestore(LanguageTypesStruct.serializer, languageTypes);

  // Add any Firestore field values
  languageTypes.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getLanguageTypesListFirestoreData(
  List<LanguageTypesStruct>? languageTypess,
) =>
    languageTypess
        ?.map((l) => getLanguageTypesFirestoreData(l, true))
        .toList() ??
    [];
