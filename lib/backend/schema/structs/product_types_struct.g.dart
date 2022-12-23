// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_types_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProductTypesStruct> _$productTypesStructSerializer =
    new _$ProductTypesStructSerializer();

class _$ProductTypesStructSerializer
    implements StructuredSerializer<ProductTypesStruct> {
  @override
  final Iterable<Type> types = const [ProductTypesStruct, _$ProductTypesStruct];
  @override
  final String wireName = 'ProductTypesStruct';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ProductTypesStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.productName;
    if (value != null) {
      result
        ..add('Product_Name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ProductTypesStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProductTypesStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Product_Name':
          result.productName = serializers.deserialize(value,
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

class _$ProductTypesStruct extends ProductTypesStruct {
  @override
  final String? productName;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$ProductTypesStruct(
          [void Function(ProductTypesStructBuilder)? updates]) =>
      (new ProductTypesStructBuilder()..update(updates))._build();

  _$ProductTypesStruct._({this.productName, required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'ProductTypesStruct', 'firestoreUtilData');
  }

  @override
  ProductTypesStruct rebuild(
          void Function(ProductTypesStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductTypesStructBuilder toBuilder() =>
      new ProductTypesStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductTypesStruct &&
        productName == other.productName &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, productName.hashCode), firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProductTypesStruct')
          ..add('productName', productName)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class ProductTypesStructBuilder
    implements Builder<ProductTypesStruct, ProductTypesStructBuilder> {
  _$ProductTypesStruct? _$v;

  String? _productName;
  String? get productName => _$this._productName;
  set productName(String? productName) => _$this._productName = productName;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  ProductTypesStructBuilder() {
    ProductTypesStruct._initializeBuilder(this);
  }

  ProductTypesStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _productName = $v.productName;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductTypesStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProductTypesStruct;
  }

  @override
  void update(void Function(ProductTypesStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProductTypesStruct build() => _build();

  _$ProductTypesStruct _build() {
    final _$result = _$v ??
        new _$ProductTypesStruct._(
            productName: productName,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'ProductTypesStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
