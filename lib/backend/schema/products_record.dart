import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'products_record.g.dart';

abstract class ProductsRecord
    implements Built<ProductsRecord, ProductsRecordBuilder> {
  static Serializer<ProductsRecord> get serializer =>
      _$productsRecordSerializer;

  String? get nameProduct;

  int? get stock;

  int? get price1g;

  int? get price3g;

  int? get pricce3halfg;

  int? get price7g;

  int? get price14g;

  int? get pricce28g;

  int? get priceUnit;

  String? get description1;

  String? get description2;

  bool? get onSale;

  bool? get outOfStock;

  @BuiltValueField(wireName: 'Strain_Ref')
  DocumentReference? get strainRef;

  @BuiltValueField(wireName: 'Strain_Name')
  String? get strainName;

  @BuiltValueField(wireName: 'Store_Ref')
  DocumentReference? get storeRef;

  @BuiltValueField(wireName: 'Store_UUID')
  String? get storeUUID;

  @BuiltValueField(wireName: 'Product_Type_Ref')
  DocumentReference? get productTypeRef;

  @BuiltValueField(wireName: 'Product_Type')
  String? get productType;

  @BuiltValueField(wireName: 'THC')
  int? get thc;

  @BuiltValueField(wireName: 'CBD')
  int? get cbd;

  @BuiltValueField(wireName: 'SeedBank')
  String? get seedBank;

  @BuiltValueField(wireName: 'Farm')
  String? get farm;

  @BuiltValueField(wireName: 'Environment')
  String? get environment;

  @BuiltValueField(wireName: 'FarmingMethod')
  String? get farmingMethod;

  @BuiltValueField(wireName: 'Thumbnail')
  String? get thumbnail;

  @BuiltValueField(wireName: 'Photo1')
  String? get photo1;

  @BuiltValueField(wireName: 'Photo2')
  String? get photo2;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ProductsRecordBuilder builder) => builder
    ..nameProduct = ''
    ..stock = 0
    ..price1g = 0
    ..price3g = 0
    ..pricce3halfg = 0
    ..price7g = 0
    ..price14g = 0
    ..pricce28g = 0
    ..priceUnit = 0
    ..description1 = ''
    ..description2 = ''
    ..onSale = false
    ..outOfStock = false
    ..strainName = ''
    ..storeUUID = ''
    ..productType = ''
    ..thc = 0
    ..cbd = 0
    ..seedBank = ''
    ..farm = ''
    ..environment = ''
    ..farmingMethod = ''
    ..thumbnail = ''
    ..photo1 = ''
    ..photo2 = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Products');

  static Stream<ProductsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ProductsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ProductsRecord._();
  factory ProductsRecord([void Function(ProductsRecordBuilder) updates]) =
      _$ProductsRecord;

  static ProductsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createProductsRecordData({
  String? nameProduct,
  int? stock,
  int? price1g,
  int? price3g,
  int? pricce3halfg,
  int? price7g,
  int? price14g,
  int? pricce28g,
  int? priceUnit,
  String? description1,
  String? description2,
  bool? onSale,
  bool? outOfStock,
  DocumentReference? strainRef,
  String? strainName,
  DocumentReference? storeRef,
  String? storeUUID,
  DocumentReference? productTypeRef,
  String? productType,
  int? thc,
  int? cbd,
  String? seedBank,
  String? farm,
  String? environment,
  String? farmingMethod,
  String? thumbnail,
  String? photo1,
  String? photo2,
}) {
  final firestoreData = serializers.toFirestore(
    ProductsRecord.serializer,
    ProductsRecord(
      (p) => p
        ..nameProduct = nameProduct
        ..stock = stock
        ..price1g = price1g
        ..price3g = price3g
        ..pricce3halfg = pricce3halfg
        ..price7g = price7g
        ..price14g = price14g
        ..pricce28g = pricce28g
        ..priceUnit = priceUnit
        ..description1 = description1
        ..description2 = description2
        ..onSale = onSale
        ..outOfStock = outOfStock
        ..strainRef = strainRef
        ..strainName = strainName
        ..storeRef = storeRef
        ..storeUUID = storeUUID
        ..productTypeRef = productTypeRef
        ..productType = productType
        ..thc = thc
        ..cbd = cbd
        ..seedBank = seedBank
        ..farm = farm
        ..environment = environment
        ..farmingMethod = farmingMethod
        ..thumbnail = thumbnail
        ..photo1 = photo1
        ..photo2 = photo2,
    ),
  );

  return firestoreData;
}
