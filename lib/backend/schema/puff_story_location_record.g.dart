// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'puff_story_location_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PuffStoryLocationRecord> _$puffStoryLocationRecordSerializer =
    new _$PuffStoryLocationRecordSerializer();

class _$PuffStoryLocationRecordSerializer
    implements StructuredSerializer<PuffStoryLocationRecord> {
  @override
  final Iterable<Type> types = const [
    PuffStoryLocationRecord,
    _$PuffStoryLocationRecord
  ];
  @override
  final String wireName = 'PuffStoryLocationRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, PuffStoryLocationRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.userID;
    if (value != null) {
      result
        ..add('userID')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userName;
    if (value != null) {
      result
        ..add('userName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userPhoto;
    if (value != null) {
      result
        ..add('userPhoto')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.location;
    if (value != null) {
      result
        ..add('location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.userRef;
    if (value != null) {
      result
        ..add('userRef')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.createAt;
    if (value != null) {
      result
        ..add('create_At')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.exposureOnMap;
    if (value != null) {
      result
        ..add('exposure_On-Map')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
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
  PuffStoryLocationRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PuffStoryLocationRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'userID':
          result.userID = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'userName':
          result.userName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'userPhoto':
          result.userPhoto = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
          break;
        case 'userRef':
          result.userRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'create_At':
          result.createAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'exposure_On-Map':
          result.exposureOnMap = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
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

class _$PuffStoryLocationRecord extends PuffStoryLocationRecord {
  @override
  final String? userID;
  @override
  final String? userName;
  @override
  final String? userPhoto;
  @override
  final LatLng? location;
  @override
  final DocumentReference<Object?>? userRef;
  @override
  final DateTime? createAt;
  @override
  final bool? exposureOnMap;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PuffStoryLocationRecord(
          [void Function(PuffStoryLocationRecordBuilder)? updates]) =>
      (new PuffStoryLocationRecordBuilder()..update(updates))._build();

  _$PuffStoryLocationRecord._(
      {this.userID,
      this.userName,
      this.userPhoto,
      this.location,
      this.userRef,
      this.createAt,
      this.exposureOnMap,
      this.ffRef})
      : super._();

  @override
  PuffStoryLocationRecord rebuild(
          void Function(PuffStoryLocationRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PuffStoryLocationRecordBuilder toBuilder() =>
      new PuffStoryLocationRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PuffStoryLocationRecord &&
        userID == other.userID &&
        userName == other.userName &&
        userPhoto == other.userPhoto &&
        location == other.location &&
        userRef == other.userRef &&
        createAt == other.createAt &&
        exposureOnMap == other.exposureOnMap &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, userID.hashCode), userName.hashCode),
                            userPhoto.hashCode),
                        location.hashCode),
                    userRef.hashCode),
                createAt.hashCode),
            exposureOnMap.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PuffStoryLocationRecord')
          ..add('userID', userID)
          ..add('userName', userName)
          ..add('userPhoto', userPhoto)
          ..add('location', location)
          ..add('userRef', userRef)
          ..add('createAt', createAt)
          ..add('exposureOnMap', exposureOnMap)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PuffStoryLocationRecordBuilder
    implements
        Builder<PuffStoryLocationRecord, PuffStoryLocationRecordBuilder> {
  _$PuffStoryLocationRecord? _$v;

  String? _userID;
  String? get userID => _$this._userID;
  set userID(String? userID) => _$this._userID = userID;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  String? _userPhoto;
  String? get userPhoto => _$this._userPhoto;
  set userPhoto(String? userPhoto) => _$this._userPhoto = userPhoto;

  LatLng? _location;
  LatLng? get location => _$this._location;
  set location(LatLng? location) => _$this._location = location;

  DocumentReference<Object?>? _userRef;
  DocumentReference<Object?>? get userRef => _$this._userRef;
  set userRef(DocumentReference<Object?>? userRef) => _$this._userRef = userRef;

  DateTime? _createAt;
  DateTime? get createAt => _$this._createAt;
  set createAt(DateTime? createAt) => _$this._createAt = createAt;

  bool? _exposureOnMap;
  bool? get exposureOnMap => _$this._exposureOnMap;
  set exposureOnMap(bool? exposureOnMap) =>
      _$this._exposureOnMap = exposureOnMap;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PuffStoryLocationRecordBuilder() {
    PuffStoryLocationRecord._initializeBuilder(this);
  }

  PuffStoryLocationRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userID = $v.userID;
      _userName = $v.userName;
      _userPhoto = $v.userPhoto;
      _location = $v.location;
      _userRef = $v.userRef;
      _createAt = $v.createAt;
      _exposureOnMap = $v.exposureOnMap;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PuffStoryLocationRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PuffStoryLocationRecord;
  }

  @override
  void update(void Function(PuffStoryLocationRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PuffStoryLocationRecord build() => _build();

  _$PuffStoryLocationRecord _build() {
    final _$result = _$v ??
        new _$PuffStoryLocationRecord._(
            userID: userID,
            userName: userName,
            userPhoto: userPhoto,
            location: location,
            userRef: userRef,
            createAt: createAt,
            exposureOnMap: exposureOnMap,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
