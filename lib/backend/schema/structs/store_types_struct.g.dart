// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_types_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<StoreTypesStruct> _$storeTypesStructSerializer =
    new _$StoreTypesStructSerializer();

class _$StoreTypesStructSerializer
    implements StructuredSerializer<StoreTypesStruct> {
  @override
  final Iterable<Type> types = const [StoreTypesStruct, _$StoreTypesStruct];
  @override
  final String wireName = 'StoreTypesStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, StoreTypesStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.storeTypeName;
    if (value != null) {
      result
        ..add('Store_Type_Name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  StoreTypesStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StoreTypesStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Store_Type_Name':
          result.storeTypeName = serializers.deserialize(value,
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

class _$StoreTypesStruct extends StoreTypesStruct {
  @override
  final String? storeTypeName;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$StoreTypesStruct(
          [void Function(StoreTypesStructBuilder)? updates]) =>
      (new StoreTypesStructBuilder()..update(updates))._build();

  _$StoreTypesStruct._({this.storeTypeName, required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'StoreTypesStruct', 'firestoreUtilData');
  }

  @override
  StoreTypesStruct rebuild(void Function(StoreTypesStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StoreTypesStructBuilder toBuilder() =>
      new StoreTypesStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StoreTypesStruct &&
        storeTypeName == other.storeTypeName &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, storeTypeName.hashCode), firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StoreTypesStruct')
          ..add('storeTypeName', storeTypeName)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class StoreTypesStructBuilder
    implements Builder<StoreTypesStruct, StoreTypesStructBuilder> {
  _$StoreTypesStruct? _$v;

  String? _storeTypeName;
  String? get storeTypeName => _$this._storeTypeName;
  set storeTypeName(String? storeTypeName) =>
      _$this._storeTypeName = storeTypeName;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  StoreTypesStructBuilder() {
    StoreTypesStruct._initializeBuilder(this);
  }

  StoreTypesStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _storeTypeName = $v.storeTypeName;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StoreTypesStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StoreTypesStruct;
  }

  @override
  void update(void Function(StoreTypesStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StoreTypesStruct build() => _build();

  _$StoreTypesStruct _build() {
    final _$result = _$v ??
        new _$StoreTypesStruct._(
            storeTypeName: storeTypeName,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'StoreTypesStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
