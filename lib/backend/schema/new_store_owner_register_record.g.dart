// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_store_owner_register_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<NewStoreOwnerRegisterRecord>
    _$newStoreOwnerRegisterRecordSerializer =
    new _$NewStoreOwnerRegisterRecordSerializer();

class _$NewStoreOwnerRegisterRecordSerializer
    implements StructuredSerializer<NewStoreOwnerRegisterRecord> {
  @override
  final Iterable<Type> types = const [
    NewStoreOwnerRegisterRecord,
    _$NewStoreOwnerRegisterRecord
  ];
  @override
  final String wireName = 'NewStoreOwnerRegisterRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, NewStoreOwnerRegisterRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.nameStore;
    if (value != null) {
      result
        ..add('name_Store')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.storeRef;
    if (value != null) {
      result
        ..add('StoreRef')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.nameOwner;
    if (value != null) {
      result
        ..add('name-Owner')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ownerRef;
    if (value != null) {
      result
        ..add('OwnerRef')
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
    value = object.businessRegistration;
    if (value != null) {
      result
        ..add('Business_Registration')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.license;
    if (value != null) {
      result
        ..add('License')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createAt;
    if (value != null) {
      result
        ..add('create_At')
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
  NewStoreOwnerRegisterRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NewStoreOwnerRegisterRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name_Store':
          result.nameStore = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'StoreRef':
          result.storeRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'name-Owner':
          result.nameOwner = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'OwnerRef':
          result.ownerRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'Owner_ID':
          result.ownerID = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Business_Registration':
          result.businessRegistration = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'License':
          result.license = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'create_At':
          result.createAt = serializers.deserialize(value,
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

class _$NewStoreOwnerRegisterRecord extends NewStoreOwnerRegisterRecord {
  @override
  final String? nameStore;
  @override
  final DocumentReference<Object?>? storeRef;
  @override
  final String? nameOwner;
  @override
  final DocumentReference<Object?>? ownerRef;
  @override
  final String? ownerID;
  @override
  final String? businessRegistration;
  @override
  final String? license;
  @override
  final DateTime? createAt;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$NewStoreOwnerRegisterRecord(
          [void Function(NewStoreOwnerRegisterRecordBuilder)? updates]) =>
      (new NewStoreOwnerRegisterRecordBuilder()..update(updates))._build();

  _$NewStoreOwnerRegisterRecord._(
      {this.nameStore,
      this.storeRef,
      this.nameOwner,
      this.ownerRef,
      this.ownerID,
      this.businessRegistration,
      this.license,
      this.createAt,
      this.ffRef})
      : super._();

  @override
  NewStoreOwnerRegisterRecord rebuild(
          void Function(NewStoreOwnerRegisterRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NewStoreOwnerRegisterRecordBuilder toBuilder() =>
      new NewStoreOwnerRegisterRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NewStoreOwnerRegisterRecord &&
        nameStore == other.nameStore &&
        storeRef == other.storeRef &&
        nameOwner == other.nameOwner &&
        ownerRef == other.ownerRef &&
        ownerID == other.ownerID &&
        businessRegistration == other.businessRegistration &&
        license == other.license &&
        createAt == other.createAt &&
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
                                $jc($jc(0, nameStore.hashCode),
                                    storeRef.hashCode),
                                nameOwner.hashCode),
                            ownerRef.hashCode),
                        ownerID.hashCode),
                    businessRegistration.hashCode),
                license.hashCode),
            createAt.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NewStoreOwnerRegisterRecord')
          ..add('nameStore', nameStore)
          ..add('storeRef', storeRef)
          ..add('nameOwner', nameOwner)
          ..add('ownerRef', ownerRef)
          ..add('ownerID', ownerID)
          ..add('businessRegistration', businessRegistration)
          ..add('license', license)
          ..add('createAt', createAt)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class NewStoreOwnerRegisterRecordBuilder
    implements
        Builder<NewStoreOwnerRegisterRecord,
            NewStoreOwnerRegisterRecordBuilder> {
  _$NewStoreOwnerRegisterRecord? _$v;

  String? _nameStore;
  String? get nameStore => _$this._nameStore;
  set nameStore(String? nameStore) => _$this._nameStore = nameStore;

  DocumentReference<Object?>? _storeRef;
  DocumentReference<Object?>? get storeRef => _$this._storeRef;
  set storeRef(DocumentReference<Object?>? storeRef) =>
      _$this._storeRef = storeRef;

  String? _nameOwner;
  String? get nameOwner => _$this._nameOwner;
  set nameOwner(String? nameOwner) => _$this._nameOwner = nameOwner;

  DocumentReference<Object?>? _ownerRef;
  DocumentReference<Object?>? get ownerRef => _$this._ownerRef;
  set ownerRef(DocumentReference<Object?>? ownerRef) =>
      _$this._ownerRef = ownerRef;

  String? _ownerID;
  String? get ownerID => _$this._ownerID;
  set ownerID(String? ownerID) => _$this._ownerID = ownerID;

  String? _businessRegistration;
  String? get businessRegistration => _$this._businessRegistration;
  set businessRegistration(String? businessRegistration) =>
      _$this._businessRegistration = businessRegistration;

  String? _license;
  String? get license => _$this._license;
  set license(String? license) => _$this._license = license;

  DateTime? _createAt;
  DateTime? get createAt => _$this._createAt;
  set createAt(DateTime? createAt) => _$this._createAt = createAt;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  NewStoreOwnerRegisterRecordBuilder() {
    NewStoreOwnerRegisterRecord._initializeBuilder(this);
  }

  NewStoreOwnerRegisterRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nameStore = $v.nameStore;
      _storeRef = $v.storeRef;
      _nameOwner = $v.nameOwner;
      _ownerRef = $v.ownerRef;
      _ownerID = $v.ownerID;
      _businessRegistration = $v.businessRegistration;
      _license = $v.license;
      _createAt = $v.createAt;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NewStoreOwnerRegisterRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NewStoreOwnerRegisterRecord;
  }

  @override
  void update(void Function(NewStoreOwnerRegisterRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NewStoreOwnerRegisterRecord build() => _build();

  _$NewStoreOwnerRegisterRecord _build() {
    final _$result = _$v ??
        new _$NewStoreOwnerRegisterRecord._(
            nameStore: nameStore,
            storeRef: storeRef,
            nameOwner: nameOwner,
            ownerRef: ownerRef,
            ownerID: ownerID,
            businessRegistration: businessRegistration,
            license: license,
            createAt: createAt,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
