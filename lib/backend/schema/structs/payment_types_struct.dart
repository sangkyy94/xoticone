import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'payment_types_struct.g.dart';

abstract class PaymentTypesStruct
    implements Built<PaymentTypesStruct, PaymentTypesStructBuilder> {
  static Serializer<PaymentTypesStruct> get serializer =>
      _$paymentTypesStructSerializer;

  @BuiltValueField(wireName: 'Payment_Name')
  String? get paymentName;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(PaymentTypesStructBuilder builder) => builder
    ..paymentName = ''
    ..firestoreUtilData = FirestoreUtilData();

  PaymentTypesStruct._();
  factory PaymentTypesStruct(
          [void Function(PaymentTypesStructBuilder) updates]) =
      _$PaymentTypesStruct;
}

PaymentTypesStruct createPaymentTypesStruct({
  String? paymentName,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PaymentTypesStruct(
      (p) => p
        ..paymentName = paymentName
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

PaymentTypesStruct? updatePaymentTypesStruct(
  PaymentTypesStruct? paymentTypes, {
  bool clearUnsetFields = true,
}) =>
    paymentTypes != null
        ? (paymentTypes.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addPaymentTypesStructData(
  Map<String, dynamic> firestoreData,
  PaymentTypesStruct? paymentTypes,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (paymentTypes == null) {
    return;
  }
  if (paymentTypes.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && paymentTypes.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final paymentTypesData =
      getPaymentTypesFirestoreData(paymentTypes, forFieldValue);
  final nestedData =
      paymentTypesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = paymentTypes.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getPaymentTypesFirestoreData(
  PaymentTypesStruct? paymentTypes, [
  bool forFieldValue = false,
]) {
  if (paymentTypes == null) {
    return {};
  }
  final firestoreData =
      serializers.toFirestore(PaymentTypesStruct.serializer, paymentTypes);

  // Add any Firestore field values
  paymentTypes.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPaymentTypesListFirestoreData(
  List<PaymentTypesStruct>? paymentTypess,
) =>
    paymentTypess?.map((p) => getPaymentTypesFirestoreData(p, true)).toList() ??
    [];
