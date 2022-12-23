// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'terpene_types_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TerpeneTypesRecord> _$terpeneTypesRecordSerializer =
    new _$TerpeneTypesRecordSerializer();

class _$TerpeneTypesRecordSerializer
    implements StructuredSerializer<TerpeneTypesRecord> {
  @override
  final Iterable<Type> types = const [TerpeneTypesRecord, _$TerpeneTypesRecord];
  @override
  final String wireName = 'TerpeneTypesRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, TerpeneTypesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.terpeneName;
    if (value != null) {
      result
        ..add('Terpene_Name')
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
  TerpeneTypesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TerpeneTypesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Terpene_Name':
          result.terpeneName = serializers.deserialize(value,
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

class _$TerpeneTypesRecord extends TerpeneTypesRecord {
  @override
  final String? terpeneName;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$TerpeneTypesRecord(
          [void Function(TerpeneTypesRecordBuilder)? updates]) =>
      (new TerpeneTypesRecordBuilder()..update(updates))._build();

  _$TerpeneTypesRecord._({this.terpeneName, this.ffRef}) : super._();

  @override
  TerpeneTypesRecord rebuild(
          void Function(TerpeneTypesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TerpeneTypesRecordBuilder toBuilder() =>
      new TerpeneTypesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TerpeneTypesRecord &&
        terpeneName == other.terpeneName &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, terpeneName.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TerpeneTypesRecord')
          ..add('terpeneName', terpeneName)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class TerpeneTypesRecordBuilder
    implements Builder<TerpeneTypesRecord, TerpeneTypesRecordBuilder> {
  _$TerpeneTypesRecord? _$v;

  String? _terpeneName;
  String? get terpeneName => _$this._terpeneName;
  set terpeneName(String? terpeneName) => _$this._terpeneName = terpeneName;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  TerpeneTypesRecordBuilder() {
    TerpeneTypesRecord._initializeBuilder(this);
  }

  TerpeneTypesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _terpeneName = $v.terpeneName;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TerpeneTypesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TerpeneTypesRecord;
  }

  @override
  void update(void Function(TerpeneTypesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TerpeneTypesRecord build() => _build();

  _$TerpeneTypesRecord _build() {
    final _$result = _$v ??
        new _$TerpeneTypesRecord._(terpeneName: terpeneName, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
