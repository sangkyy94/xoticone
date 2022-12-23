// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stamp_coupons_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<StampCouponsRecord> _$stampCouponsRecordSerializer =
    new _$StampCouponsRecordSerializer();

class _$StampCouponsRecordSerializer
    implements StructuredSerializer<StampCouponsRecord> {
  @override
  final Iterable<Type> types = const [StampCouponsRecord, _$StampCouponsRecord];
  @override
  final String wireName = 'StampCouponsRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, StampCouponsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.couponName;
    if (value != null) {
      result
        ..add('Coupon_Name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.stampCount;
    if (value != null) {
      result
        ..add('Stamp_Count')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.expireDate;
    if (value != null) {
      result
        ..add('Expire_Date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.received;
    if (value != null) {
      result
        ..add('Received')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.expired;
    if (value != null) {
      result
        ..add('Expired')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.discarded;
    if (value != null) {
      result
        ..add('Discarded')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.rewarded;
    if (value != null) {
      result
        ..add('Rewarded')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.storeRef;
    if (value != null) {
      result
        ..add('Store_Ref')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.storeName;
    if (value != null) {
      result
        ..add('Store_Name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.customerRef;
    if (value != null) {
      result
        ..add('Customer_Ref')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.customerId;
    if (value != null) {
      result
        ..add('Customer_Id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.couponId;
    if (value != null) {
      result
        ..add('Coupon_Id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.couponSerial;
    if (value != null) {
      result
        ..add('Coupon_Serial')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.storeOwnerRef;
    if (value != null) {
      result
        ..add('Store_Owner_Ref')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.storeOwnerId;
    if (value != null) {
      result
        ..add('Store_Owner_Id')
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
    value = object.userThumbnail;
    if (value != null) {
      result
        ..add('User_Thumbnail')
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
  StampCouponsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StampCouponsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Coupon_Name':
          result.couponName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Stamp_Count':
          result.stampCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Expire_Date':
          result.expireDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'Received':
          result.received = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'Expired':
          result.expired = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'Discarded':
          result.discarded = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'Rewarded':
          result.rewarded = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'Store_Ref':
          result.storeRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'Store_Name':
          result.storeName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Customer_Ref':
          result.customerRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'Customer_Id':
          result.customerId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Coupon_Id':
          result.couponId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Coupon_Serial':
          result.couponSerial = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Store_Owner_Ref':
          result.storeOwnerRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'Store_Owner_Id':
          result.storeOwnerId = serializers.deserialize(value,
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
        case 'User_Thumbnail':
          result.userThumbnail = serializers.deserialize(value,
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

class _$StampCouponsRecord extends StampCouponsRecord {
  @override
  final String? couponName;
  @override
  final int? stampCount;
  @override
  final DateTime? expireDate;
  @override
  final bool? received;
  @override
  final bool? expired;
  @override
  final bool? discarded;
  @override
  final bool? rewarded;
  @override
  final DocumentReference<Object?>? storeRef;
  @override
  final String? storeName;
  @override
  final DocumentReference<Object?>? customerRef;
  @override
  final String? customerId;
  @override
  final String? couponId;
  @override
  final int? couponSerial;
  @override
  final DocumentReference<Object?>? storeOwnerRef;
  @override
  final String? storeOwnerId;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final String? userThumbnail;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$StampCouponsRecord(
          [void Function(StampCouponsRecordBuilder)? updates]) =>
      (new StampCouponsRecordBuilder()..update(updates))._build();

  _$StampCouponsRecord._(
      {this.couponName,
      this.stampCount,
      this.expireDate,
      this.received,
      this.expired,
      this.discarded,
      this.rewarded,
      this.storeRef,
      this.storeName,
      this.customerRef,
      this.customerId,
      this.couponId,
      this.couponSerial,
      this.storeOwnerRef,
      this.storeOwnerId,
      this.createdAt,
      this.updatedAt,
      this.userThumbnail,
      this.ffRef})
      : super._();

  @override
  StampCouponsRecord rebuild(
          void Function(StampCouponsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StampCouponsRecordBuilder toBuilder() =>
      new StampCouponsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StampCouponsRecord &&
        couponName == other.couponName &&
        stampCount == other.stampCount &&
        expireDate == other.expireDate &&
        received == other.received &&
        expired == other.expired &&
        discarded == other.discarded &&
        rewarded == other.rewarded &&
        storeRef == other.storeRef &&
        storeName == other.storeName &&
        customerRef == other.customerRef &&
        customerId == other.customerId &&
        couponId == other.couponId &&
        couponSerial == other.couponSerial &&
        storeOwnerRef == other.storeOwnerRef &&
        storeOwnerId == other.storeOwnerId &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        userThumbnail == other.userThumbnail &&
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
                                                                            $jc(
                                                                                0,
                                                                                couponName
                                                                                    .hashCode),
                                                                            stampCount
                                                                                .hashCode),
                                                                        expireDate
                                                                            .hashCode),
                                                                    received
                                                                        .hashCode),
                                                                expired
                                                                    .hashCode),
                                                            discarded.hashCode),
                                                        rewarded.hashCode),
                                                    storeRef.hashCode),
                                                storeName.hashCode),
                                            customerRef.hashCode),
                                        customerId.hashCode),
                                    couponId.hashCode),
                                couponSerial.hashCode),
                            storeOwnerRef.hashCode),
                        storeOwnerId.hashCode),
                    createdAt.hashCode),
                updatedAt.hashCode),
            userThumbnail.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StampCouponsRecord')
          ..add('couponName', couponName)
          ..add('stampCount', stampCount)
          ..add('expireDate', expireDate)
          ..add('received', received)
          ..add('expired', expired)
          ..add('discarded', discarded)
          ..add('rewarded', rewarded)
          ..add('storeRef', storeRef)
          ..add('storeName', storeName)
          ..add('customerRef', customerRef)
          ..add('customerId', customerId)
          ..add('couponId', couponId)
          ..add('couponSerial', couponSerial)
          ..add('storeOwnerRef', storeOwnerRef)
          ..add('storeOwnerId', storeOwnerId)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('userThumbnail', userThumbnail)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class StampCouponsRecordBuilder
    implements Builder<StampCouponsRecord, StampCouponsRecordBuilder> {
  _$StampCouponsRecord? _$v;

  String? _couponName;
  String? get couponName => _$this._couponName;
  set couponName(String? couponName) => _$this._couponName = couponName;

  int? _stampCount;
  int? get stampCount => _$this._stampCount;
  set stampCount(int? stampCount) => _$this._stampCount = stampCount;

  DateTime? _expireDate;
  DateTime? get expireDate => _$this._expireDate;
  set expireDate(DateTime? expireDate) => _$this._expireDate = expireDate;

  bool? _received;
  bool? get received => _$this._received;
  set received(bool? received) => _$this._received = received;

  bool? _expired;
  bool? get expired => _$this._expired;
  set expired(bool? expired) => _$this._expired = expired;

  bool? _discarded;
  bool? get discarded => _$this._discarded;
  set discarded(bool? discarded) => _$this._discarded = discarded;

  bool? _rewarded;
  bool? get rewarded => _$this._rewarded;
  set rewarded(bool? rewarded) => _$this._rewarded = rewarded;

  DocumentReference<Object?>? _storeRef;
  DocumentReference<Object?>? get storeRef => _$this._storeRef;
  set storeRef(DocumentReference<Object?>? storeRef) =>
      _$this._storeRef = storeRef;

  String? _storeName;
  String? get storeName => _$this._storeName;
  set storeName(String? storeName) => _$this._storeName = storeName;

  DocumentReference<Object?>? _customerRef;
  DocumentReference<Object?>? get customerRef => _$this._customerRef;
  set customerRef(DocumentReference<Object?>? customerRef) =>
      _$this._customerRef = customerRef;

  String? _customerId;
  String? get customerId => _$this._customerId;
  set customerId(String? customerId) => _$this._customerId = customerId;

  String? _couponId;
  String? get couponId => _$this._couponId;
  set couponId(String? couponId) => _$this._couponId = couponId;

  int? _couponSerial;
  int? get couponSerial => _$this._couponSerial;
  set couponSerial(int? couponSerial) => _$this._couponSerial = couponSerial;

  DocumentReference<Object?>? _storeOwnerRef;
  DocumentReference<Object?>? get storeOwnerRef => _$this._storeOwnerRef;
  set storeOwnerRef(DocumentReference<Object?>? storeOwnerRef) =>
      _$this._storeOwnerRef = storeOwnerRef;

  String? _storeOwnerId;
  String? get storeOwnerId => _$this._storeOwnerId;
  set storeOwnerId(String? storeOwnerId) => _$this._storeOwnerId = storeOwnerId;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  String? _userThumbnail;
  String? get userThumbnail => _$this._userThumbnail;
  set userThumbnail(String? userThumbnail) =>
      _$this._userThumbnail = userThumbnail;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  StampCouponsRecordBuilder() {
    StampCouponsRecord._initializeBuilder(this);
  }

  StampCouponsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _couponName = $v.couponName;
      _stampCount = $v.stampCount;
      _expireDate = $v.expireDate;
      _received = $v.received;
      _expired = $v.expired;
      _discarded = $v.discarded;
      _rewarded = $v.rewarded;
      _storeRef = $v.storeRef;
      _storeName = $v.storeName;
      _customerRef = $v.customerRef;
      _customerId = $v.customerId;
      _couponId = $v.couponId;
      _couponSerial = $v.couponSerial;
      _storeOwnerRef = $v.storeOwnerRef;
      _storeOwnerId = $v.storeOwnerId;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _userThumbnail = $v.userThumbnail;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StampCouponsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StampCouponsRecord;
  }

  @override
  void update(void Function(StampCouponsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StampCouponsRecord build() => _build();

  _$StampCouponsRecord _build() {
    final _$result = _$v ??
        new _$StampCouponsRecord._(
            couponName: couponName,
            stampCount: stampCount,
            expireDate: expireDate,
            received: received,
            expired: expired,
            discarded: discarded,
            rewarded: rewarded,
            storeRef: storeRef,
            storeName: storeName,
            customerRef: customerRef,
            customerId: customerId,
            couponId: couponId,
            couponSerial: couponSerial,
            storeOwnerRef: storeOwnerRef,
            storeOwnerId: storeOwnerId,
            createdAt: createdAt,
            updatedAt: updatedAt,
            userThumbnail: userThumbnail,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
