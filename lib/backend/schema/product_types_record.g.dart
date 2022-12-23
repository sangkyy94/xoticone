// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_types_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProductTypesRecord> _$productTypesRecordSerializer =
    new _$ProductTypesRecordSerializer();

class _$ProductTypesRecordSerializer
    implements StructuredSerializer<ProductTypesRecord> {
  @override
  final Iterable<Type> types = const [ProductTypesRecord, _$ProductTypesRecord];
  @override
  final String wireName = 'ProductTypesRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ProductTypesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.typeName;
    if (value != null) {
      result
        ..add('Type_Name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdAt;
    if (value != null) {
      result
        ..add('Created_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.updatedAt;
    if (value != null) {
      result
        ..add('Updated_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
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
  ProductTypesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProductTypesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Type_Name':
          result.typeName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'Updated_at':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
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

class _$ProductTypesRecord extends ProductTypesRecord {
  @override
  final String? typeName;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ProductTypesRecord(
          [void Function(ProductTypesRecordBuilder)? updates]) =>
      (new ProductTypesRecordBuilder()..update(updates))._build();

  _$ProductTypesRecord._(
      {this.typeName, this.createdAt, this.updatedAt, this.ffRef})
      : super._();

  @override
  ProductTypesRecord rebuild(
          void Function(ProductTypesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductTypesRecordBuilder toBuilder() =>
      new ProductTypesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductTypesRecord &&
        typeName == other.typeName &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, typeName.hashCode), createdAt.hashCode),
            updatedAt.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProductTypesRecord')
          ..add('typeName', typeName)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ProductTypesRecordBuilder
    implements Builder<ProductTypesRecord, ProductTypesRecordBuilder> {
  _$ProductTypesRecord? _$v;

  String? _typeName;
  String? get typeName => _$this._typeName;
  set typeName(String? typeName) => _$this._typeName = typeName;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ProductTypesRecordBuilder() {
    ProductTypesRecord._initializeBuilder(this);
  }

  ProductTypesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _typeName = $v.typeName;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductTypesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProductTypesRecord;
  }

  @override
  void update(void Function(ProductTypesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProductTypesRecord build() => _build();

  _$ProductTypesRecord _build() {
    final _$result = _$v ??
        new _$ProductTypesRecord._(
            typeName: typeName,
            createdAt: createdAt,
            updatedAt: updatedAt,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
