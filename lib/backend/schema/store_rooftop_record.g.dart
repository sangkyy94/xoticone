// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_rooftop_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<StoreRooftopRecord> _$storeRooftopRecordSerializer =
    new _$StoreRooftopRecordSerializer();

class _$StoreRooftopRecordSerializer
    implements StructuredSerializer<StoreRooftopRecord> {
  @override
  final Iterable<Type> types = const [StoreRooftopRecord, _$StoreRooftopRecord];
  @override
  final String wireName = 'StoreRooftopRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, StoreRooftopRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.suburb;
    if (value != null) {
      result
        ..add('suburb')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.metadata;
    if (value != null) {
      result
        ..add('metadata')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.address;
    if (value != null) {
      result
        ..add('address')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.geolocation;
    if (value != null) {
      result
        ..add('geolocation')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.numLikes;
    if (value != null) {
      result
        ..add('num_Likes')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.cityRef;
    if (value != null) {
      result
        ..add('CityRef')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.createdAt;
    if (value != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.updatedAt;
    if (value != null) {
      result
        ..add('updated_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ownerRef;
    if (value != null) {
      result
        ..add('Owner_Ref')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.ownerID;
    if (value != null) {
      result
        ..add('Owner_ID')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.numCoupon;
    if (value != null) {
      result
        ..add('Num_Coupon')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.numStamp;
    if (value != null) {
      result
        ..add('Num_Stamp')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.storeUUID;
    if (value != null) {
      result
        ..add('Store_UUID')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nameStore;
    if (value != null) {
      result
        ..add('nameStore')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.businessHour;
    if (value != null) {
      result
        ..add('business_Hour')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.suburbRef;
    if (value != null) {
      result
        ..add('suburbRef')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_Number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.thumbnail;
    if (value != null) {
      result
        ..add('thumbnail')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.mainPhoto;
    if (value != null) {
      result
        ..add('main_Photo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.topBannerPhoto;
    if (value != null) {
      result
        ..add('topBanner_Photo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.bgPhoto;
    if (value != null) {
      result
        ..add('bg_photo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.numberRating;
    if (value != null) {
      result
        ..add('Number_Rating')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.favoritedBy;
    if (value != null) {
      result
        ..add('favorited_By')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.strainProductList;
    if (value != null) {
      result
        ..add('strain_Product_List')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.nameCity;
    if (value != null) {
      result
        ..add('name_City')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.serviceCategoryList;
    if (value != null) {
      result
        ..add('service_Category_List')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.serviceCategory;
    if (value != null) {
      result
        ..add('service_Category')
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
  StoreRooftopRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StoreRooftopRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'suburb':
          result.suburb = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'metadata':
          result.metadata = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'geolocation':
          result.geolocation = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
          break;
        case 'num_Likes':
          result.numLikes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'CityRef':
          result.cityRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'updated_at':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Owner_Ref':
          result.ownerRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'Owner_ID':
          result.ownerID = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Num_Coupon':
          result.numCoupon = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Num_Stamp':
          result.numStamp = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Store_UUID':
          result.storeUUID = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'nameStore':
          result.nameStore = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'business_Hour':
          result.businessHour = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'suburbRef':
          result.suburbRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'phone_Number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'thumbnail':
          result.thumbnail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'main_Photo':
          result.mainPhoto = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'topBanner_Photo':
          result.topBannerPhoto = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'bg_photo':
          result.bgPhoto = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Number_Rating':
          result.numberRating = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'favorited_By':
          result.favoritedBy = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'strain_Product_List':
          result.strainProductList.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'name_City':
          result.nameCity = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'service_Category_List':
          result.serviceCategoryList.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'service_Category':
          result.serviceCategory = serializers.deserialize(value,
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

class _$StoreRooftopRecord extends StoreRooftopRecord {
  @override
  final String? suburb;
  @override
  final String? metadata;
  @override
  final String? address;
  @override
  final LatLng? geolocation;
  @override
  final int? numLikes;
  @override
  final DocumentReference<Object?>? cityRef;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final String? description;
  @override
  final DocumentReference<Object?>? ownerRef;
  @override
  final String? ownerID;
  @override
  final int? numCoupon;
  @override
  final int? numStamp;
  @override
  final String? storeUUID;
  @override
  final String? nameStore;
  @override
  final String? businessHour;
  @override
  final DocumentReference<Object?>? suburbRef;
  @override
  final String? phoneNumber;
  @override
  final String? thumbnail;
  @override
  final String? mainPhoto;
  @override
  final String? topBannerPhoto;
  @override
  final String? bgPhoto;
  @override
  final double? numberRating;
  @override
  final DocumentReference<Object?>? favoritedBy;
  @override
  final BuiltList<DocumentReference<Object?>>? strainProductList;
  @override
  final String? nameCity;
  @override
  final BuiltList<DocumentReference<Object?>>? serviceCategoryList;
  @override
  final String? serviceCategory;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$StoreRooftopRecord(
          [void Function(StoreRooftopRecordBuilder)? updates]) =>
      (new StoreRooftopRecordBuilder()..update(updates))._build();

  _$StoreRooftopRecord._(
      {this.suburb,
      this.metadata,
      this.address,
      this.geolocation,
      this.numLikes,
      this.cityRef,
      this.createdAt,
      this.updatedAt,
      this.description,
      this.ownerRef,
      this.ownerID,
      this.numCoupon,
      this.numStamp,
      this.storeUUID,
      this.nameStore,
      this.businessHour,
      this.suburbRef,
      this.phoneNumber,
      this.thumbnail,
      this.mainPhoto,
      this.topBannerPhoto,
      this.bgPhoto,
      this.numberRating,
      this.favoritedBy,
      this.strainProductList,
      this.nameCity,
      this.serviceCategoryList,
      this.serviceCategory,
      this.ffRef})
      : super._();

  @override
  StoreRooftopRecord rebuild(
          void Function(StoreRooftopRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StoreRooftopRecordBuilder toBuilder() =>
      new StoreRooftopRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StoreRooftopRecord &&
        suburb == other.suburb &&
        metadata == other.metadata &&
        address == other.address &&
        geolocation == other.geolocation &&
        numLikes == other.numLikes &&
        cityRef == other.cityRef &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        description == other.description &&
        ownerRef == other.ownerRef &&
        ownerID == other.ownerID &&
        numCoupon == other.numCoupon &&
        numStamp == other.numStamp &&
        storeUUID == other.storeUUID &&
        nameStore == other.nameStore &&
        businessHour == other.businessHour &&
        suburbRef == other.suburbRef &&
        phoneNumber == other.phoneNumber &&
        thumbnail == other.thumbnail &&
        mainPhoto == other.mainPhoto &&
        topBannerPhoto == other.topBannerPhoto &&
        bgPhoto == other.bgPhoto &&
        numberRating == other.numberRating &&
        favoritedBy == other.favoritedBy &&
        strainProductList == other.strainProductList &&
        nameCity == other.nameCity &&
        serviceCategoryList == other.serviceCategoryList &&
        serviceCategory == other.serviceCategory &&
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
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, suburb.hashCode), metadata.hashCode), address.hashCode), geolocation.hashCode), numLikes.hashCode), cityRef.hashCode), createdAt.hashCode), updatedAt.hashCode), description.hashCode), ownerRef.hashCode),
                                                                                ownerID.hashCode),
                                                                            numCoupon.hashCode),
                                                                        numStamp.hashCode),
                                                                    storeUUID.hashCode),
                                                                nameStore.hashCode),
                                                            businessHour.hashCode),
                                                        suburbRef.hashCode),
                                                    phoneNumber.hashCode),
                                                thumbnail.hashCode),
                                            mainPhoto.hashCode),
                                        topBannerPhoto.hashCode),
                                    bgPhoto.hashCode),
                                numberRating.hashCode),
                            favoritedBy.hashCode),
                        strainProductList.hashCode),
                    nameCity.hashCode),
                serviceCategoryList.hashCode),
            serviceCategory.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StoreRooftopRecord')
          ..add('suburb', suburb)
          ..add('metadata', metadata)
          ..add('address', address)
          ..add('geolocation', geolocation)
          ..add('numLikes', numLikes)
          ..add('cityRef', cityRef)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('description', description)
          ..add('ownerRef', ownerRef)
          ..add('ownerID', ownerID)
          ..add('numCoupon', numCoupon)
          ..add('numStamp', numStamp)
          ..add('storeUUID', storeUUID)
          ..add('nameStore', nameStore)
          ..add('businessHour', businessHour)
          ..add('suburbRef', suburbRef)
          ..add('phoneNumber', phoneNumber)
          ..add('thumbnail', thumbnail)
          ..add('mainPhoto', mainPhoto)
          ..add('topBannerPhoto', topBannerPhoto)
          ..add('bgPhoto', bgPhoto)
          ..add('numberRating', numberRating)
          ..add('favoritedBy', favoritedBy)
          ..add('strainProductList', strainProductList)
          ..add('nameCity', nameCity)
          ..add('serviceCategoryList', serviceCategoryList)
          ..add('serviceCategory', serviceCategory)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class StoreRooftopRecordBuilder
    implements Builder<StoreRooftopRecord, StoreRooftopRecordBuilder> {
  _$StoreRooftopRecord? _$v;

  String? _suburb;
  String? get suburb => _$this._suburb;
  set suburb(String? suburb) => _$this._suburb = suburb;

  String? _metadata;
  String? get metadata => _$this._metadata;
  set metadata(String? metadata) => _$this._metadata = metadata;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  LatLng? _geolocation;
  LatLng? get geolocation => _$this._geolocation;
  set geolocation(LatLng? geolocation) => _$this._geolocation = geolocation;

  int? _numLikes;
  int? get numLikes => _$this._numLikes;
  set numLikes(int? numLikes) => _$this._numLikes = numLikes;

  DocumentReference<Object?>? _cityRef;
  DocumentReference<Object?>? get cityRef => _$this._cityRef;
  set cityRef(DocumentReference<Object?>? cityRef) => _$this._cityRef = cityRef;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  DocumentReference<Object?>? _ownerRef;
  DocumentReference<Object?>? get ownerRef => _$this._ownerRef;
  set ownerRef(DocumentReference<Object?>? ownerRef) =>
      _$this._ownerRef = ownerRef;

  String? _ownerID;
  String? get ownerID => _$this._ownerID;
  set ownerID(String? ownerID) => _$this._ownerID = ownerID;

  int? _numCoupon;
  int? get numCoupon => _$this._numCoupon;
  set numCoupon(int? numCoupon) => _$this._numCoupon = numCoupon;

  int? _numStamp;
  int? get numStamp => _$this._numStamp;
  set numStamp(int? numStamp) => _$this._numStamp = numStamp;

  String? _storeUUID;
  String? get storeUUID => _$this._storeUUID;
  set storeUUID(String? storeUUID) => _$this._storeUUID = storeUUID;

  String? _nameStore;
  String? get nameStore => _$this._nameStore;
  set nameStore(String? nameStore) => _$this._nameStore = nameStore;

  String? _businessHour;
  String? get businessHour => _$this._businessHour;
  set businessHour(String? businessHour) => _$this._businessHour = businessHour;

  DocumentReference<Object?>? _suburbRef;
  DocumentReference<Object?>? get suburbRef => _$this._suburbRef;
  set suburbRef(DocumentReference<Object?>? suburbRef) =>
      _$this._suburbRef = suburbRef;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _thumbnail;
  String? get thumbnail => _$this._thumbnail;
  set thumbnail(String? thumbnail) => _$this._thumbnail = thumbnail;

  String? _mainPhoto;
  String? get mainPhoto => _$this._mainPhoto;
  set mainPhoto(String? mainPhoto) => _$this._mainPhoto = mainPhoto;

  String? _topBannerPhoto;
  String? get topBannerPhoto => _$this._topBannerPhoto;
  set topBannerPhoto(String? topBannerPhoto) =>
      _$this._topBannerPhoto = topBannerPhoto;

  String? _bgPhoto;
  String? get bgPhoto => _$this._bgPhoto;
  set bgPhoto(String? bgPhoto) => _$this._bgPhoto = bgPhoto;

  double? _numberRating;
  double? get numberRating => _$this._numberRating;
  set numberRating(double? numberRating) => _$this._numberRating = numberRating;

  DocumentReference<Object?>? _favoritedBy;
  DocumentReference<Object?>? get favoritedBy => _$this._favoritedBy;
  set favoritedBy(DocumentReference<Object?>? favoritedBy) =>
      _$this._favoritedBy = favoritedBy;

  ListBuilder<DocumentReference<Object?>>? _strainProductList;
  ListBuilder<DocumentReference<Object?>> get strainProductList =>
      _$this._strainProductList ??=
          new ListBuilder<DocumentReference<Object?>>();
  set strainProductList(
          ListBuilder<DocumentReference<Object?>>? strainProductList) =>
      _$this._strainProductList = strainProductList;

  String? _nameCity;
  String? get nameCity => _$this._nameCity;
  set nameCity(String? nameCity) => _$this._nameCity = nameCity;

  ListBuilder<DocumentReference<Object?>>? _serviceCategoryList;
  ListBuilder<DocumentReference<Object?>> get serviceCategoryList =>
      _$this._serviceCategoryList ??=
          new ListBuilder<DocumentReference<Object?>>();
  set serviceCategoryList(
          ListBuilder<DocumentReference<Object?>>? serviceCategoryList) =>
      _$this._serviceCategoryList = serviceCategoryList;

  String? _serviceCategory;
  String? get serviceCategory => _$this._serviceCategory;
  set serviceCategory(String? serviceCategory) =>
      _$this._serviceCategory = serviceCategory;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  StoreRooftopRecordBuilder() {
    StoreRooftopRecord._initializeBuilder(this);
  }

  StoreRooftopRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _suburb = $v.suburb;
      _metadata = $v.metadata;
      _address = $v.address;
      _geolocation = $v.geolocation;
      _numLikes = $v.numLikes;
      _cityRef = $v.cityRef;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _description = $v.description;
      _ownerRef = $v.ownerRef;
      _ownerID = $v.ownerID;
      _numCoupon = $v.numCoupon;
      _numStamp = $v.numStamp;
      _storeUUID = $v.storeUUID;
      _nameStore = $v.nameStore;
      _businessHour = $v.businessHour;
      _suburbRef = $v.suburbRef;
      _phoneNumber = $v.phoneNumber;
      _thumbnail = $v.thumbnail;
      _mainPhoto = $v.mainPhoto;
      _topBannerPhoto = $v.topBannerPhoto;
      _bgPhoto = $v.bgPhoto;
      _numberRating = $v.numberRating;
      _favoritedBy = $v.favoritedBy;
      _strainProductList = $v.strainProductList?.toBuilder();
      _nameCity = $v.nameCity;
      _serviceCategoryList = $v.serviceCategoryList?.toBuilder();
      _serviceCategory = $v.serviceCategory;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StoreRooftopRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StoreRooftopRecord;
  }

  @override
  void update(void Function(StoreRooftopRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StoreRooftopRecord build() => _build();

  _$StoreRooftopRecord _build() {
    _$StoreRooftopRecord _$result;
    try {
      _$result = _$v ??
          new _$StoreRooftopRecord._(
              suburb: suburb,
              metadata: metadata,
              address: address,
              geolocation: geolocation,
              numLikes: numLikes,
              cityRef: cityRef,
              createdAt: createdAt,
              updatedAt: updatedAt,
              description: description,
              ownerRef: ownerRef,
              ownerID: ownerID,
              numCoupon: numCoupon,
              numStamp: numStamp,
              storeUUID: storeUUID,
              nameStore: nameStore,
              businessHour: businessHour,
              suburbRef: suburbRef,
              phoneNumber: phoneNumber,
              thumbnail: thumbnail,
              mainPhoto: mainPhoto,
              topBannerPhoto: topBannerPhoto,
              bgPhoto: bgPhoto,
              numberRating: numberRating,
              favoritedBy: favoritedBy,
              strainProductList: _strainProductList?.build(),
              nameCity: nameCity,
              serviceCategoryList: _serviceCategoryList?.build(),
              serviceCategory: serviceCategory,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'strainProductList';
        _strainProductList?.build();

        _$failedField = 'serviceCategoryList';
        _serviceCategoryList?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'StoreRooftopRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
