// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'strains_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<StrainsRecord> _$strainsRecordSerializer =
    new _$StrainsRecordSerializer();

class _$StrainsRecordSerializer implements StructuredSerializer<StrainsRecord> {
  @override
  final Iterable<Type> types = const [StrainsRecord, _$StrainsRecord];
  @override
  final String wireName = 'StrainsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, StrainsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.strainName;
    if (value != null) {
      result
        ..add('strainName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.aka;
    if (value != null) {
      result
        ..add('aka')
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
    value = object.cbg;
    if (value != null) {
      result
        ..add('CBG')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.cbc;
    if (value != null) {
      result
        ..add('CBC')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.strainType;
    if (value != null) {
      result
        ..add('strainType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.strainTypeRef;
    if (value != null) {
      result
        ..add('strain_Type_Ref')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.thcv;
    if (value != null) {
      result
        ..add('THCV')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.terpene;
    if (value != null) {
      result
        ..add('terpene')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.thumbnail75;
    if (value != null) {
      result
        ..add('thumbnail75')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photo150;
    if (value != null) {
      result
        ..add('photo150')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.imageTest;
    if (value != null) {
      result
        ..add('ImageTest')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.numberSearcch;
    if (value != null) {
      result
        ..add('number_Searcch')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.mood;
    if (value != null) {
      result
        ..add('mood')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.favoritedBy;
    if (value != null) {
      result
        ..add('favorited_By')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
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
  StrainsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StrainsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'strainName':
          result.strainName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'aka':
          result.aka = serializers.deserialize(value,
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
        case 'CBG':
          result.cbg = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'CBC':
          result.cbc = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'strainType':
          result.strainType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'strain_Type_Ref':
          result.strainTypeRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'THCV':
          result.thcv = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'terpene':
          result.terpene = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'thumbnail75':
          result.thumbnail75 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'photo150':
          result.photo150 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ImageTest':
          result.imageTest = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'number_Searcch':
          result.numberSearcch = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'mood':
          result.mood = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'favorited_By':
          result.favoritedBy.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
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

class _$StrainsRecord extends StrainsRecord {
  @override
  final String? strainName;
  @override
  final String? aka;
  @override
  final int? thc;
  @override
  final int? cbd;
  @override
  final int? cbg;
  @override
  final int? cbc;
  @override
  final String? strainType;
  @override
  final DocumentReference<Object?>? strainTypeRef;
  @override
  final int? thcv;
  @override
  final String? terpene;
  @override
  final String? thumbnail75;
  @override
  final String? photo150;
  @override
  final String? imageTest;
  @override
  final int? numberSearcch;
  @override
  final DocumentReference<Object?>? mood;
  @override
  final BuiltList<DocumentReference<Object?>>? favoritedBy;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$StrainsRecord([void Function(StrainsRecordBuilder)? updates]) =>
      (new StrainsRecordBuilder()..update(updates))._build();

  _$StrainsRecord._(
      {this.strainName,
      this.aka,
      this.thc,
      this.cbd,
      this.cbg,
      this.cbc,
      this.strainType,
      this.strainTypeRef,
      this.thcv,
      this.terpene,
      this.thumbnail75,
      this.photo150,
      this.imageTest,
      this.numberSearcch,
      this.mood,
      this.favoritedBy,
      this.ffRef})
      : super._();

  @override
  StrainsRecord rebuild(void Function(StrainsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StrainsRecordBuilder toBuilder() => new StrainsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StrainsRecord &&
        strainName == other.strainName &&
        aka == other.aka &&
        thc == other.thc &&
        cbd == other.cbd &&
        cbg == other.cbg &&
        cbc == other.cbc &&
        strainType == other.strainType &&
        strainTypeRef == other.strainTypeRef &&
        thcv == other.thcv &&
        terpene == other.terpene &&
        thumbnail75 == other.thumbnail75 &&
        photo150 == other.photo150 &&
        imageTest == other.imageTest &&
        numberSearcch == other.numberSearcch &&
        mood == other.mood &&
        favoritedBy == other.favoritedBy &&
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
                                                                        0,
                                                                        strainName
                                                                            .hashCode),
                                                                    aka.hashCode),
                                                                thc.hashCode),
                                                            cbd.hashCode),
                                                        cbg.hashCode),
                                                    cbc.hashCode),
                                                strainType.hashCode),
                                            strainTypeRef.hashCode),
                                        thcv.hashCode),
                                    terpene.hashCode),
                                thumbnail75.hashCode),
                            photo150.hashCode),
                        imageTest.hashCode),
                    numberSearcch.hashCode),
                mood.hashCode),
            favoritedBy.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StrainsRecord')
          ..add('strainName', strainName)
          ..add('aka', aka)
          ..add('thc', thc)
          ..add('cbd', cbd)
          ..add('cbg', cbg)
          ..add('cbc', cbc)
          ..add('strainType', strainType)
          ..add('strainTypeRef', strainTypeRef)
          ..add('thcv', thcv)
          ..add('terpene', terpene)
          ..add('thumbnail75', thumbnail75)
          ..add('photo150', photo150)
          ..add('imageTest', imageTest)
          ..add('numberSearcch', numberSearcch)
          ..add('mood', mood)
          ..add('favoritedBy', favoritedBy)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class StrainsRecordBuilder
    implements Builder<StrainsRecord, StrainsRecordBuilder> {
  _$StrainsRecord? _$v;

  String? _strainName;
  String? get strainName => _$this._strainName;
  set strainName(String? strainName) => _$this._strainName = strainName;

  String? _aka;
  String? get aka => _$this._aka;
  set aka(String? aka) => _$this._aka = aka;

  int? _thc;
  int? get thc => _$this._thc;
  set thc(int? thc) => _$this._thc = thc;

  int? _cbd;
  int? get cbd => _$this._cbd;
  set cbd(int? cbd) => _$this._cbd = cbd;

  int? _cbg;
  int? get cbg => _$this._cbg;
  set cbg(int? cbg) => _$this._cbg = cbg;

  int? _cbc;
  int? get cbc => _$this._cbc;
  set cbc(int? cbc) => _$this._cbc = cbc;

  String? _strainType;
  String? get strainType => _$this._strainType;
  set strainType(String? strainType) => _$this._strainType = strainType;

  DocumentReference<Object?>? _strainTypeRef;
  DocumentReference<Object?>? get strainTypeRef => _$this._strainTypeRef;
  set strainTypeRef(DocumentReference<Object?>? strainTypeRef) =>
      _$this._strainTypeRef = strainTypeRef;

  int? _thcv;
  int? get thcv => _$this._thcv;
  set thcv(int? thcv) => _$this._thcv = thcv;

  String? _terpene;
  String? get terpene => _$this._terpene;
  set terpene(String? terpene) => _$this._terpene = terpene;

  String? _thumbnail75;
  String? get thumbnail75 => _$this._thumbnail75;
  set thumbnail75(String? thumbnail75) => _$this._thumbnail75 = thumbnail75;

  String? _photo150;
  String? get photo150 => _$this._photo150;
  set photo150(String? photo150) => _$this._photo150 = photo150;

  String? _imageTest;
  String? get imageTest => _$this._imageTest;
  set imageTest(String? imageTest) => _$this._imageTest = imageTest;

  int? _numberSearcch;
  int? get numberSearcch => _$this._numberSearcch;
  set numberSearcch(int? numberSearcch) =>
      _$this._numberSearcch = numberSearcch;

  DocumentReference<Object?>? _mood;
  DocumentReference<Object?>? get mood => _$this._mood;
  set mood(DocumentReference<Object?>? mood) => _$this._mood = mood;

  ListBuilder<DocumentReference<Object?>>? _favoritedBy;
  ListBuilder<DocumentReference<Object?>> get favoritedBy =>
      _$this._favoritedBy ??= new ListBuilder<DocumentReference<Object?>>();
  set favoritedBy(ListBuilder<DocumentReference<Object?>>? favoritedBy) =>
      _$this._favoritedBy = favoritedBy;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  StrainsRecordBuilder() {
    StrainsRecord._initializeBuilder(this);
  }

  StrainsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _strainName = $v.strainName;
      _aka = $v.aka;
      _thc = $v.thc;
      _cbd = $v.cbd;
      _cbg = $v.cbg;
      _cbc = $v.cbc;
      _strainType = $v.strainType;
      _strainTypeRef = $v.strainTypeRef;
      _thcv = $v.thcv;
      _terpene = $v.terpene;
      _thumbnail75 = $v.thumbnail75;
      _photo150 = $v.photo150;
      _imageTest = $v.imageTest;
      _numberSearcch = $v.numberSearcch;
      _mood = $v.mood;
      _favoritedBy = $v.favoritedBy?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StrainsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StrainsRecord;
  }

  @override
  void update(void Function(StrainsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StrainsRecord build() => _build();

  _$StrainsRecord _build() {
    _$StrainsRecord _$result;
    try {
      _$result = _$v ??
          new _$StrainsRecord._(
              strainName: strainName,
              aka: aka,
              thc: thc,
              cbd: cbd,
              cbg: cbg,
              cbc: cbc,
              strainType: strainType,
              strainTypeRef: strainTypeRef,
              thcv: thcv,
              terpene: terpene,
              thumbnail75: thumbnail75,
              photo150: photo150,
              imageTest: imageTest,
              numberSearcch: numberSearcch,
              mood: mood,
              favoritedBy: _favoritedBy?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'favoritedBy';
        _favoritedBy?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'StrainsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
