// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProductsRecord> _$productsRecordSerializer =
    new _$ProductsRecordSerializer();

class _$ProductsRecordSerializer
    implements StructuredSerializer<ProductsRecord> {
  @override
  final Iterable<Type> types = const [ProductsRecord, _$ProductsRecord];
  @override
  final String wireName = 'ProductsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ProductsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.nameProduct;
    if (value != null) {
      result
        ..add('nameProduct')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.stock;
    if (value != null) {
      result
        ..add('stock')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.price1g;
    if (value != null) {
      result
        ..add('price1g')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.price3g;
    if (value != null) {
      result
        ..add('price3g')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.pricce3halfg;
    if (value != null) {
      result
        ..add('pricce3halfg')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.price7g;
    if (value != null) {
      result
        ..add('price7g')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.price14g;
    if (value != null) {
      result
        ..add('price14g')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.pricce28g;
    if (value != null) {
      result
        ..add('pricce28g')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.priceUnit;
    if (value != null) {
      result
        ..add('priceUnit')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.description1;
    if (value != null) {
      result
        ..add('description1')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description2;
    if (value != null) {
      result
        ..add('description2')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.onSale;
    if (value != null) {
      result
        ..add('onSale')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.outOfStock;
    if (value != null) {
      result
        ..add('outOfStock')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.strainRef;
    if (value != null) {
      result
        ..add('Strain_Ref')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.strainName;
    if (value != null) {
      result
        ..add('Strain_Name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.storeRef;
    if (value != null) {
      result
        ..add('Store_Ref')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.storeUUID;
    if (value != null) {
      result
        ..add('Store_UUID')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.productTypeRef;
    if (value != null) {
      result
        ..add('Product_Type_Ref')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.productType;
    if (value != null) {
      result
        ..add('Product_Type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.thc;
    if (value != null) {
      result
        ..add('THC')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.cbd;
    if (value != null) {
      result
        ..add('CBD')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.seedBank;
    if (value != null) {
      result
        ..add('SeedBank')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.farm;
    if (value != null) {
      result
        ..add('Farm')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.environment;
    if (value != null) {
      result
        ..add('Environment')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.farmingMethod;
    if (value != null) {
      result
        ..add('FarmingMethod')
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
  ProductsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProductsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'nameProduct':
          result.nameProduct = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'stock':
          result.stock = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'price1g':
          result.price1g = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'price3g':
          result.price3g = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'pricce3halfg':
          result.pricce3halfg = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'price7g':
          result.price7g = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'price14g':
          result.price14g = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'pricce28g':
          result.pricce28g = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'priceUnit':
          result.priceUnit = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'description1':
          result.description1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description2':
          result.description2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'onSale':
          result.onSale = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'outOfStock':
          result.outOfStock = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'Strain_Ref':
          result.strainRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'Strain_Name':
          result.strainName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Store_Ref':
          result.storeRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'Store_UUID':
          result.storeUUID = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Product_Type_Ref':
          result.productTypeRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'Product_Type':
          result.productType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'THC':
          result.thc = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'CBD':
          result.cbd = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'SeedBank':
          result.seedBank = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Farm':
          result.farm = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Environment':
          result.environment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'FarmingMethod':
          result.farmingMethod = serializers.deserialize(value,
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

class _$ProductsRecord extends ProductsRecord {
  @override
  final String? nameProduct;
  @override
  final int? stock;
  @override
  final int? price1g;
  @override
  final int? price3g;
  @override
  final int? pricce3halfg;
  @override
  final int? price7g;
  @override
  final int? price14g;
  @override
  final int? pricce28g;
  @override
  final int? priceUnit;
  @override
  final String? description1;
  @override
  final String? description2;
  @override
  final bool? onSale;
  @override
  final bool? outOfStock;
  @override
  final DocumentReference<Object?>? strainRef;
  @override
  final String? strainName;
  @override
  final DocumentReference<Object?>? storeRef;
  @override
  final String? storeUUID;
  @override
  final DocumentReference<Object?>? productTypeRef;
  @override
  final String? productType;
  @override
  final int? thc;
  @override
  final int? cbd;
  @override
  final String? seedBank;
  @override
  final String? farm;
  @override
  final String? environment;
  @override
  final String? farmingMethod;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ProductsRecord([void Function(ProductsRecordBuilder)? updates]) =>
      (new ProductsRecordBuilder()..update(updates))._build();

  _$ProductsRecord._(
      {this.nameProduct,
      this.stock,
      this.price1g,
      this.price3g,
      this.pricce3halfg,
      this.price7g,
      this.price14g,
      this.pricce28g,
      this.priceUnit,
      this.description1,
      this.description2,
      this.onSale,
      this.outOfStock,
      this.strainRef,
      this.strainName,
      this.storeRef,
      this.storeUUID,
      this.productTypeRef,
      this.productType,
      this.thc,
      this.cbd,
      this.seedBank,
      this.farm,
      this.environment,
      this.farmingMethod,
      this.ffRef})
      : super._();

  @override
  ProductsRecord rebuild(void Function(ProductsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductsRecordBuilder toBuilder() =>
      new ProductsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductsRecord &&
        nameProduct == other.nameProduct &&
        stock == other.stock &&
        price1g == other.price1g &&
        price3g == other.price3g &&
        pricce3halfg == other.pricce3halfg &&
        price7g == other.price7g &&
        price14g == other.price14g &&
        pricce28g == other.pricce28g &&
        priceUnit == other.priceUnit &&
        description1 == other.description1 &&
        description2 == other.description2 &&
        onSale == other.onSale &&
        outOfStock == other.outOfStock &&
        strainRef == other.strainRef &&
        strainName == other.strainName &&
        storeRef == other.storeRef &&
        storeUUID == other.storeUUID &&
        productTypeRef == other.productTypeRef &&
        productType == other.productType &&
        thc == other.thc &&
        cbd == other.cbd &&
        seedBank == other.seedBank &&
        farm == other.farm &&
        environment == other.environment &&
        farmingMethod == other.farmingMethod &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc(0, nameProduct.hashCode), stock.hashCode), price1g.hashCode), price3g.hashCode), pricce3halfg.hashCode), price7g.hashCode), price14g.hashCode),
                                                                                pricce28g.hashCode),
                                                                            priceUnit.hashCode),
                                                                        description1.hashCode),
                                                                    description2.hashCode),
                                                                onSale.hashCode),
                                                            outOfStock.hashCode),
                                                        strainRef.hashCode),
                                                    strainName.hashCode),
                                                storeRef.hashCode),
                                            storeUUID.hashCode),
                                        productTypeRef.hashCode),
                                    productType.hashCode),
                                thc.hashCode),
                            cbd.hashCode),
                        seedBank.hashCode),
                    farm.hashCode),
                environment.hashCode),
            farmingMethod.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProductsRecord')
          ..add('nameProduct', nameProduct)
          ..add('stock', stock)
          ..add('price1g', price1g)
          ..add('price3g', price3g)
          ..add('pricce3halfg', pricce3halfg)
          ..add('price7g', price7g)
          ..add('price14g', price14g)
          ..add('pricce28g', pricce28g)
          ..add('priceUnit', priceUnit)
          ..add('description1', description1)
          ..add('description2', description2)
          ..add('onSale', onSale)
          ..add('outOfStock', outOfStock)
          ..add('strainRef', strainRef)
          ..add('strainName', strainName)
          ..add('storeRef', storeRef)
          ..add('storeUUID', storeUUID)
          ..add('productTypeRef', productTypeRef)
          ..add('productType', productType)
          ..add('thc', thc)
          ..add('cbd', cbd)
          ..add('seedBank', seedBank)
          ..add('farm', farm)
          ..add('environment', environment)
          ..add('farmingMethod', farmingMethod)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ProductsRecordBuilder
    implements Builder<ProductsRecord, ProductsRecordBuilder> {
  _$ProductsRecord? _$v;

  String? _nameProduct;
  String? get nameProduct => _$this._nameProduct;
  set nameProduct(String? nameProduct) => _$this._nameProduct = nameProduct;

  int? _stock;
  int? get stock => _$this._stock;
  set stock(int? stock) => _$this._stock = stock;

  int? _price1g;
  int? get price1g => _$this._price1g;
  set price1g(int? price1g) => _$this._price1g = price1g;

  int? _price3g;
  int? get price3g => _$this._price3g;
  set price3g(int? price3g) => _$this._price3g = price3g;

  int? _pricce3halfg;
  int? get pricce3halfg => _$this._pricce3halfg;
  set pricce3halfg(int? pricce3halfg) => _$this._pricce3halfg = pricce3halfg;

  int? _price7g;
  int? get price7g => _$this._price7g;
  set price7g(int? price7g) => _$this._price7g = price7g;

  int? _price14g;
  int? get price14g => _$this._price14g;
  set price14g(int? price14g) => _$this._price14g = price14g;

  int? _pricce28g;
  int? get pricce28g => _$this._pricce28g;
  set pricce28g(int? pricce28g) => _$this._pricce28g = pricce28g;

  int? _priceUnit;
  int? get priceUnit => _$this._priceUnit;
  set priceUnit(int? priceUnit) => _$this._priceUnit = priceUnit;

  String? _description1;
  String? get description1 => _$this._description1;
  set description1(String? description1) => _$this._description1 = description1;

  String? _description2;
  String? get description2 => _$this._description2;
  set description2(String? description2) => _$this._description2 = description2;

  bool? _onSale;
  bool? get onSale => _$this._onSale;
  set onSale(bool? onSale) => _$this._onSale = onSale;

  bool? _outOfStock;
  bool? get outOfStock => _$this._outOfStock;
  set outOfStock(bool? outOfStock) => _$this._outOfStock = outOfStock;

  DocumentReference<Object?>? _strainRef;
  DocumentReference<Object?>? get strainRef => _$this._strainRef;
  set strainRef(DocumentReference<Object?>? strainRef) =>
      _$this._strainRef = strainRef;

  String? _strainName;
  String? get strainName => _$this._strainName;
  set strainName(String? strainName) => _$this._strainName = strainName;

  DocumentReference<Object?>? _storeRef;
  DocumentReference<Object?>? get storeRef => _$this._storeRef;
  set storeRef(DocumentReference<Object?>? storeRef) =>
      _$this._storeRef = storeRef;

  String? _storeUUID;
  String? get storeUUID => _$this._storeUUID;
  set storeUUID(String? storeUUID) => _$this._storeUUID = storeUUID;

  DocumentReference<Object?>? _productTypeRef;
  DocumentReference<Object?>? get productTypeRef => _$this._productTypeRef;
  set productTypeRef(DocumentReference<Object?>? productTypeRef) =>
      _$this._productTypeRef = productTypeRef;

  String? _productType;
  String? get productType => _$this._productType;
  set productType(String? productType) => _$this._productType = productType;

  int? _thc;
  int? get thc => _$this._thc;
  set thc(int? thc) => _$this._thc = thc;

  int? _cbd;
  int? get cbd => _$this._cbd;
  set cbd(int? cbd) => _$this._cbd = cbd;

  String? _seedBank;
  String? get seedBank => _$this._seedBank;
  set seedBank(String? seedBank) => _$this._seedBank = seedBank;

  String? _farm;
  String? get farm => _$this._farm;
  set farm(String? farm) => _$this._farm = farm;

  String? _environment;
  String? get environment => _$this._environment;
  set environment(String? environment) => _$this._environment = environment;

  String? _farmingMethod;
  String? get farmingMethod => _$this._farmingMethod;
  set farmingMethod(String? farmingMethod) =>
      _$this._farmingMethod = farmingMethod;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ProductsRecordBuilder() {
    ProductsRecord._initializeBuilder(this);
  }

  ProductsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nameProduct = $v.nameProduct;
      _stock = $v.stock;
      _price1g = $v.price1g;
      _price3g = $v.price3g;
      _pricce3halfg = $v.pricce3halfg;
      _price7g = $v.price7g;
      _price14g = $v.price14g;
      _pricce28g = $v.pricce28g;
      _priceUnit = $v.priceUnit;
      _description1 = $v.description1;
      _description2 = $v.description2;
      _onSale = $v.onSale;
      _outOfStock = $v.outOfStock;
      _strainRef = $v.strainRef;
      _strainName = $v.strainName;
      _storeRef = $v.storeRef;
      _storeUUID = $v.storeUUID;
      _productTypeRef = $v.productTypeRef;
      _productType = $v.productType;
      _thc = $v.thc;
      _cbd = $v.cbd;
      _seedBank = $v.seedBank;
      _farm = $v.farm;
      _environment = $v.environment;
      _farmingMethod = $v.farmingMethod;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProductsRecord;
  }

  @override
  void update(void Function(ProductsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProductsRecord build() => _build();

  _$ProductsRecord _build() {
    final _$result = _$v ??
        new _$ProductsRecord._(
            nameProduct: nameProduct,
            stock: stock,
            price1g: price1g,
            price3g: price3g,
            pricce3halfg: pricce3halfg,
            price7g: price7g,
            price14g: price14g,
            pricce28g: pricce28g,
            priceUnit: priceUnit,
            description1: description1,
            description2: description2,
            onSale: onSale,
            outOfStock: outOfStock,
            strainRef: strainRef,
            strainName: strainName,
            storeRef: storeRef,
            storeUUID: storeUUID,
            productTypeRef: productTypeRef,
            productType: productType,
            thc: thc,
            cbd: cbd,
            seedBank: seedBank,
            farm: farm,
            environment: environment,
            farmingMethod: farmingMethod,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
