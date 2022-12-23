// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language_types_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LanguageTypesStruct> _$languageTypesStructSerializer =
    new _$LanguageTypesStructSerializer();

class _$LanguageTypesStructSerializer
    implements StructuredSerializer<LanguageTypesStruct> {
  @override
  final Iterable<Type> types = const [
    LanguageTypesStruct,
    _$LanguageTypesStruct
  ];
  @override
  final String wireName = 'LanguageTypesStruct';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, LanguageTypesStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.laguageName;
    if (value != null) {
      result
        ..add('Laguage_Name')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    return result;
  }

  @override
  LanguageTypesStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LanguageTypesStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Laguage_Name':
          result.laguageName.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
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

class _$LanguageTypesStruct extends LanguageTypesStruct {
  @override
  final BuiltList<String>? laguageName;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$LanguageTypesStruct(
          [void Function(LanguageTypesStructBuilder)? updates]) =>
      (new LanguageTypesStructBuilder()..update(updates))._build();

  _$LanguageTypesStruct._({this.laguageName, required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'LanguageTypesStruct', 'firestoreUtilData');
  }

  @override
  LanguageTypesStruct rebuild(
          void Function(LanguageTypesStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LanguageTypesStructBuilder toBuilder() =>
      new LanguageTypesStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LanguageTypesStruct &&
        laguageName == other.laguageName &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, laguageName.hashCode), firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LanguageTypesStruct')
          ..add('laguageName', laguageName)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class LanguageTypesStructBuilder
    implements Builder<LanguageTypesStruct, LanguageTypesStructBuilder> {
  _$LanguageTypesStruct? _$v;

  ListBuilder<String>? _laguageName;
  ListBuilder<String> get laguageName =>
      _$this._laguageName ??= new ListBuilder<String>();
  set laguageName(ListBuilder<String>? laguageName) =>
      _$this._laguageName = laguageName;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  LanguageTypesStructBuilder() {
    LanguageTypesStruct._initializeBuilder(this);
  }

  LanguageTypesStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _laguageName = $v.laguageName?.toBuilder();
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LanguageTypesStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LanguageTypesStruct;
  }

  @override
  void update(void Function(LanguageTypesStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LanguageTypesStruct build() => _build();

  _$LanguageTypesStruct _build() {
    _$LanguageTypesStruct _$result;
    try {
      _$result = _$v ??
          new _$LanguageTypesStruct._(
              laguageName: _laguageName?.build(),
              firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                  firestoreUtilData,
                  r'LanguageTypesStruct',
                  'firestoreUtilData'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'laguageName';
        _laguageName?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'LanguageTypesStruct', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
