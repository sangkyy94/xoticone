// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_types_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PaymentTypesStruct> _$paymentTypesStructSerializer =
    new _$PaymentTypesStructSerializer();

class _$PaymentTypesStructSerializer
    implements StructuredSerializer<PaymentTypesStruct> {
  @override
  final Iterable<Type> types = const [PaymentTypesStruct, _$PaymentTypesStruct];
  @override
  final String wireName = 'PaymentTypesStruct';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, PaymentTypesStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.paymentName;
    if (value != null) {
      result
        ..add('Payment_Name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  PaymentTypesStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PaymentTypesStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Payment_Name':
          result.paymentName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'firestoreUtilData':
          result.firestoreUtilData = serializers.deserialize(value,
                  specifiedType: const FullType(FirestoreUtilData))!
              as FirestoreUtilData;
          break;
      }
    }

    return result.build();
  }
}

class _$PaymentTypesStruct extends PaymentTypesStruct {
  @override
  final String? paymentName;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$PaymentTypesStruct(
          [void Function(PaymentTypesStructBuilder)? updates]) =>
      (new PaymentTypesStructBuilder()..update(updates))._build();

  _$PaymentTypesStruct._({this.paymentName, required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'PaymentTypesStruct', 'firestoreUtilData');
  }

  @override
  PaymentTypesStruct rebuild(
          void Function(PaymentTypesStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PaymentTypesStructBuilder toBuilder() =>
      new PaymentTypesStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PaymentTypesStruct &&
        paymentName == other.paymentName &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, paymentName.hashCode), firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PaymentTypesStruct')
          ..add('paymentName', paymentName)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class PaymentTypesStructBuilder
    implements Builder<PaymentTypesStruct, PaymentTypesStructBuilder> {
  _$PaymentTypesStruct? _$v;

  String? _paymentName;
  String? get paymentName => _$this._paymentName;
  set paymentName(String? paymentName) => _$this._paymentName = paymentName;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  PaymentTypesStructBuilder() {
    PaymentTypesStruct._initializeBuilder(this);
  }

  PaymentTypesStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _paymentName = $v.paymentName;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PaymentTypesStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PaymentTypesStruct;
  }

  @override
  void update(void Function(PaymentTypesStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PaymentTypesStruct build() => _build();

  _$PaymentTypesStruct _build() {
    final _$result = _$v ??
        new _$PaymentTypesStruct._(
            paymentName: paymentName,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'PaymentTypesStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
