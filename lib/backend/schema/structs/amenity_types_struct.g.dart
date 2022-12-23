// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'amenity_types_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AmenityTypesStruct> _$amenityTypesStructSerializer =
    new _$AmenityTypesStructSerializer();

class _$AmenityTypesStructSerializer
    implements StructuredSerializer<AmenityTypesStruct> {
  @override
  final Iterable<Type> types = const [AmenityTypesStruct, _$AmenityTypesStruct];
  @override
  final String wireName = 'AmenityTypesStruct';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, AmenityTypesStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.amenityName;
    if (value != null) {
      result
        ..add('Amenity_Name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  AmenityTypesStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AmenityTypesStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Amenity_Name':
          result.amenityName = serializers.deserialize(value,
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

class _$AmenityTypesStruct extends AmenityTypesStruct {
  @override
  final String? amenityName;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$AmenityTypesStruct(
          [void Function(AmenityTypesStructBuilder)? updates]) =>
      (new AmenityTypesStructBuilder()..update(updates))._build();

  _$AmenityTypesStruct._({this.amenityName, required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'AmenityTypesStruct', 'firestoreUtilData');
  }

  @override
  AmenityTypesStruct rebuild(
          void Function(AmenityTypesStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AmenityTypesStructBuilder toBuilder() =>
      new AmenityTypesStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AmenityTypesStruct &&
        amenityName == other.amenityName &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, amenityName.hashCode), firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AmenityTypesStruct')
          ..add('amenityName', amenityName)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class AmenityTypesStructBuilder
    implements Builder<AmenityTypesStruct, AmenityTypesStructBuilder> {
  _$AmenityTypesStruct? _$v;

  String? _amenityName;
  String? get amenityName => _$this._amenityName;
  set amenityName(String? amenityName) => _$this._amenityName = amenityName;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  AmenityTypesStructBuilder() {
    AmenityTypesStruct._initializeBuilder(this);
  }

  AmenityTypesStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _amenityName = $v.amenityName;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AmenityTypesStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AmenityTypesStruct;
  }

  @override
  void update(void Function(AmenityTypesStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AmenityTypesStruct build() => _build();

  _$AmenityTypesStruct _build() {
    final _$result = _$v ??
        new _$AmenityTypesStruct._(
            amenityName: amenityName,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'AmenityTypesStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
