// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cities_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CitiesRecord> _$citiesRecordSerializer =
    new _$CitiesRecordSerializer();

class _$CitiesRecordSerializer implements StructuredSerializer<CitiesRecord> {
  @override
  final Iterable<Type> types = const [CitiesRecord, _$CitiesRecord];
  @override
  final String wireName = 'CitiesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, CitiesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.nameCity;
    if (value != null) {
      result
        ..add('name_city')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoMain;
    if (value != null) {
      result
        ..add('photo_main')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoThumb;
    if (value != null) {
      result
        ..add('photo_thumb')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.suburb;
    if (value != null) {
      result
        ..add('suburb')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.exposure;
    if (value != null) {
      result
        ..add('exposure')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.createdAt;
    if (value != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.exposureOrder;
    if (value != null) {
      result
        ..add('Exposure_Order')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
  CitiesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CitiesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name_city':
          result.nameCity = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'photo_main':
          result.photoMain = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'photo_thumb':
          result.photoThumb = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'suburb':
          result.suburb = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'exposure':
          result.exposure = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'Exposure_Order':
          result.exposureOrder = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
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

class _$CitiesRecord extends CitiesRecord {
  @override
  final String? nameCity;
  @override
  final String? photoMain;
  @override
  final String? photoThumb;
  @override
  final DocumentReference<Object?>? suburb;
  @override
  final bool? exposure;
  @override
  final DateTime? createdAt;
  @override
  final int? exposureOrder;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CitiesRecord([void Function(CitiesRecordBuilder)? updates]) =>
      (new CitiesRecordBuilder()..update(updates))._build();

  _$CitiesRecord._(
      {this.nameCity,
      this.photoMain,
      this.photoThumb,
      this.suburb,
      this.exposure,
      this.createdAt,
      this.exposureOrder,
      this.ffRef})
      : super._();

  @override
  CitiesRecord rebuild(void Function(CitiesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CitiesRecordBuilder toBuilder() => new CitiesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CitiesRecord &&
        nameCity == other.nameCity &&
        photoMain == other.photoMain &&
        photoThumb == other.photoThumb &&
        suburb == other.suburb &&
        exposure == other.exposure &&
        createdAt == other.createdAt &&
        exposureOrder == other.exposureOrder &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, nameCity.hashCode), photoMain.hashCode),
                            photoThumb.hashCode),
                        suburb.hashCode),
                    exposure.hashCode),
                createdAt.hashCode),
            exposureOrder.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CitiesRecord')
          ..add('nameCity', nameCity)
          ..add('photoMain', photoMain)
          ..add('photoThumb', photoThumb)
          ..add('suburb', suburb)
          ..add('exposure', exposure)
          ..add('createdAt', createdAt)
          ..add('exposureOrder', exposureOrder)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CitiesRecordBuilder
    implements Builder<CitiesRecord, CitiesRecordBuilder> {
  _$CitiesRecord? _$v;

  String? _nameCity;
  String? get nameCity => _$this._nameCity;
  set nameCity(String? nameCity) => _$this._nameCity = nameCity;

  String? _photoMain;
  String? get photoMain => _$this._photoMain;
  set photoMain(String? photoMain) => _$this._photoMain = photoMain;

  String? _photoThumb;
  String? get photoThumb => _$this._photoThumb;
  set photoThumb(String? photoThumb) => _$this._photoThumb = photoThumb;

  DocumentReference<Object?>? _suburb;
  DocumentReference<Object?>? get suburb => _$this._suburb;
  set suburb(DocumentReference<Object?>? suburb) => _$this._suburb = suburb;

  bool? _exposure;
  bool? get exposure => _$this._exposure;
  set exposure(bool? exposure) => _$this._exposure = exposure;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  int? _exposureOrder;
  int? get exposureOrder => _$this._exposureOrder;
  set exposureOrder(int? exposureOrder) =>
      _$this._exposureOrder = exposureOrder;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CitiesRecordBuilder() {
    CitiesRecord._initializeBuilder(this);
  }

  CitiesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nameCity = $v.nameCity;
      _photoMain = $v.photoMain;
      _photoThumb = $v.photoThumb;
      _suburb = $v.suburb;
      _exposure = $v.exposure;
      _createdAt = $v.createdAt;
      _exposureOrder = $v.exposureOrder;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CitiesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CitiesRecord;
  }

  @override
  void update(void Function(CitiesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CitiesRecord build() => _build();

  _$CitiesRecord _build() {
    final _$result = _$v ??
        new _$CitiesRecord._(
            nameCity: nameCity,
            photoMain: photoMain,
            photoThumb: photoThumb,
            suburb: suburb,
            exposure: exposure,
            createdAt: createdAt,
            exposureOrder: exposureOrder,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
