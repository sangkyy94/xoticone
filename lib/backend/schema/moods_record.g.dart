// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moods_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MoodsRecord> _$moodsRecordSerializer = new _$MoodsRecordSerializer();

class _$MoodsRecordSerializer implements StructuredSerializer<MoodsRecord> {
  @override
  final Iterable<Type> types = const [MoodsRecord, _$MoodsRecord];
  @override
  final String wireName = 'MoodsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, MoodsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.moodName;
    if (value != null) {
      result
        ..add('Mood_Name')
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
  MoodsRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MoodsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Mood_Name':
          result.moodName = serializers.deserialize(value,
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

class _$MoodsRecord extends MoodsRecord {
  @override
  final String? moodName;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$MoodsRecord([void Function(MoodsRecordBuilder)? updates]) =>
      (new MoodsRecordBuilder()..update(updates))._build();

  _$MoodsRecord._({this.moodName, this.ffRef}) : super._();

  @override
  MoodsRecord rebuild(void Function(MoodsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MoodsRecordBuilder toBuilder() => new MoodsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MoodsRecord &&
        moodName == other.moodName &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, moodName.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MoodsRecord')
          ..add('moodName', moodName)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class MoodsRecordBuilder implements Builder<MoodsRecord, MoodsRecordBuilder> {
  _$MoodsRecord? _$v;

  String? _moodName;
  String? get moodName => _$this._moodName;
  set moodName(String? moodName) => _$this._moodName = moodName;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  MoodsRecordBuilder() {
    MoodsRecord._initializeBuilder(this);
  }

  MoodsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _moodName = $v.moodName;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MoodsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MoodsRecord;
  }

  @override
  void update(void Function(MoodsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MoodsRecord build() => _build();

  _$MoodsRecord _build() {
    final _$result =
        _$v ?? new _$MoodsRecord._(moodName: moodName, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
