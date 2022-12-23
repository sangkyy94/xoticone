// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'suburbs_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SuburbsRecord> _$suburbsRecordSerializer =
    new _$SuburbsRecordSerializer();

class _$SuburbsRecordSerializer implements StructuredSerializer<SuburbsRecord> {
  @override
  final Iterable<Type> types = const [SuburbsRecord, _$SuburbsRecord];
  @override
  final String wireName = 'SuburbsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, SuburbsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.suburrbName;
    if (value != null) {
      result
        ..add('suburrbName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photo1;
    if (value != null) {
      result
        ..add('Photo1')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoThumbnail;
    if (value != null) {
      result
        ..add('PhotoThumbnail')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
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
    value = object.hide;
    if (value != null) {
      result
        ..add('hide')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.cityRef;
    if (value != null) {
      result
        ..add('cityRef')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.city;
    if (value != null) {
      result
        ..add('city')
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
  SuburbsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SuburbsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'suburrbName':
          result.suburrbName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Photo1':
          result.photo1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'PhotoThumbnail':
          result.photoThumbnail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
          break;
        case 'hide':
          result.hide = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'cityRef':
          result.cityRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'city':
          result.city = serializers.deserialize(value,
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

class _$SuburbsRecord extends SuburbsRecord {
  @override
  final String? suburrbName;
  @override
  final String? photo1;
  @override
  final String? photoThumbnail;
  @override
  final String? description;
  @override
  final LatLng? location;
  @override
  final bool? hide;
  @override
  final DocumentReference<Object?>? cityRef;
  @override
  final String? city;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$SuburbsRecord([void Function(SuburbsRecordBuilder)? updates]) =>
      (new SuburbsRecordBuilder()..update(updates))._build();

  _$SuburbsRecord._(
      {this.suburrbName,
      this.photo1,
      this.photoThumbnail,
      this.description,
      this.location,
      this.hide,
      this.cityRef,
      this.city,
      this.ffRef})
      : super._();

  @override
  SuburbsRecord rebuild(void Function(SuburbsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SuburbsRecordBuilder toBuilder() => new SuburbsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SuburbsRecord &&
        suburrbName == other.suburrbName &&
        photo1 == other.photo1 &&
        photoThumbnail == other.photoThumbnail &&
        description == other.description &&
        location == other.location &&
        hide == other.hide &&
        cityRef == other.cityRef &&
        city == other.city &&
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
                                $jc($jc(0, suburrbName.hashCode),
                                    photo1.hashCode),
                                photoThumbnail.hashCode),
                            description.hashCode),
                        location.hashCode),
                    hide.hashCode),
                cityRef.hashCode),
            city.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SuburbsRecord')
          ..add('suburrbName', suburrbName)
          ..add('photo1', photo1)
          ..add('photoThumbnail', photoThumbnail)
          ..add('description', description)
          ..add('location', location)
          ..add('hide', hide)
          ..add('cityRef', cityRef)
          ..add('city', city)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class SuburbsRecordBuilder
    implements Builder<SuburbsRecord, SuburbsRecordBuilder> {
  _$SuburbsRecord? _$v;

  String? _suburrbName;
  String? get suburrbName => _$this._suburrbName;
  set suburrbName(String? suburrbName) => _$this._suburrbName = suburrbName;

  String? _photo1;
  String? get photo1 => _$this._photo1;
  set photo1(String? photo1) => _$this._photo1 = photo1;

  String? _photoThumbnail;
  String? get photoThumbnail => _$this._photoThumbnail;
  set photoThumbnail(String? photoThumbnail) =>
      _$this._photoThumbnail = photoThumbnail;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  LatLng? _location;
  LatLng? get location => _$this._location;
  set location(LatLng? location) => _$this._location = location;

  bool? _hide;
  bool? get hide => _$this._hide;
  set hide(bool? hide) => _$this._hide = hide;

  DocumentReference<Object?>? _cityRef;
  DocumentReference<Object?>? get cityRef => _$this._cityRef;
  set cityRef(DocumentReference<Object?>? cityRef) => _$this._cityRef = cityRef;

  String? _city;
  String? get city => _$this._city;
  set city(String? city) => _$this._city = city;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  SuburbsRecordBuilder() {
    SuburbsRecord._initializeBuilder(this);
  }

  SuburbsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _suburrbName = $v.suburrbName;
      _photo1 = $v.photo1;
      _photoThumbnail = $v.photoThumbnail;
      _description = $v.description;
      _location = $v.location;
      _hide = $v.hide;
      _cityRef = $v.cityRef;
      _city = $v.city;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SuburbsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SuburbsRecord;
  }

  @override
  void update(void Function(SuburbsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SuburbsRecord build() => _build();

  _$SuburbsRecord _build() {
    final _$result = _$v ??
        new _$SuburbsRecord._(
            suburrbName: suburrbName,
            photo1: photo1,
            photoThumbnail: photoThumbnail,
            description: description,
            location: location,
            hide: hide,
            cityRef: cityRef,
            city: city,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
