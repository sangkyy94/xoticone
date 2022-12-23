// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'strain_types_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<StrainTypesRecord> _$strainTypesRecordSerializer =
    new _$StrainTypesRecordSerializer();

class _$StrainTypesRecordSerializer
    implements StructuredSerializer<StrainTypesRecord> {
  @override
  final Iterable<Type> types = const [StrainTypesRecord, _$StrainTypesRecord];
  @override
  final String wireName = 'StrainTypesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, StrainTypesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.nameType;
    if (value != null) {
      result
        ..add('nameType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  StrainTypesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StrainTypesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'nameType':
          result.nameType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$StrainTypesRecord extends StrainTypesRecord {
  @override
  final String? nameType;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$StrainTypesRecord(
          [void Function(StrainTypesRecordBuilder)? updates]) =>
      (new StrainTypesRecordBuilder()..update(updates))._build();

  _$StrainTypesRecord._({this.nameType, this.ffRef}) : super._();

  @override
  StrainTypesRecord rebuild(void Function(StrainTypesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StrainTypesRecordBuilder toBuilder() =>
      new StrainTypesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StrainTypesRecord &&
        nameType == other.nameType &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, nameType.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StrainTypesRecord')
          ..add('nameType', nameType)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class StrainTypesRecordBuilder
    implements Builder<StrainTypesRecord, StrainTypesRecordBuilder> {
  _$StrainTypesRecord? _$v;

  String? _nameType;
  String? get nameType => _$this._nameType;
  set nameType(String? nameType) => _$this._nameType = nameType;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  StrainTypesRecordBuilder() {
    StrainTypesRecord._initializeBuilder(this);
  }

  StrainTypesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nameType = $v.nameType;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StrainTypesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StrainTypesRecord;
  }

  @override
  void update(void Function(StrainTypesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StrainTypesRecord build() => _build();

  _$StrainTypesRecord _build() {
    final _$result =
        _$v ?? new _$StrainTypesRecord._(nameType: nameType, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
