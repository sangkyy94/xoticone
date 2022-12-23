// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'c_s_types_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CSTypesRecord> _$cSTypesRecordSerializer =
    new _$CSTypesRecordSerializer();

class _$CSTypesRecordSerializer implements StructuredSerializer<CSTypesRecord> {
  @override
  final Iterable<Type> types = const [CSTypesRecord, _$CSTypesRecord];
  @override
  final String wireName = 'CSTypesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, CSTypesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.nameType;
    if (value != null) {
      result
        ..add('name_Type')
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
  CSTypesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CSTypesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name_Type':
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

class _$CSTypesRecord extends CSTypesRecord {
  @override
  final String? nameType;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CSTypesRecord([void Function(CSTypesRecordBuilder)? updates]) =>
      (new CSTypesRecordBuilder()..update(updates))._build();

  _$CSTypesRecord._({this.nameType, this.ffRef}) : super._();

  @override
  CSTypesRecord rebuild(void Function(CSTypesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CSTypesRecordBuilder toBuilder() => new CSTypesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CSTypesRecord &&
        nameType == other.nameType &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, nameType.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CSTypesRecord')
          ..add('nameType', nameType)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CSTypesRecordBuilder
    implements Builder<CSTypesRecord, CSTypesRecordBuilder> {
  _$CSTypesRecord? _$v;

  String? _nameType;
  String? get nameType => _$this._nameType;
  set nameType(String? nameType) => _$this._nameType = nameType;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CSTypesRecordBuilder() {
    CSTypesRecord._initializeBuilder(this);
  }

  CSTypesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nameType = $v.nameType;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CSTypesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CSTypesRecord;
  }

  @override
  void update(void Function(CSTypesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CSTypesRecord build() => _build();

  _$CSTypesRecord _build() {
    final _$result =
        _$v ?? new _$CSTypesRecord._(nameType: nameType, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
