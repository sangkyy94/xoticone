// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business_hour_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BusinessHourRecord> _$businessHourRecordSerializer =
    new _$BusinessHourRecordSerializer();

class _$BusinessHourRecordSerializer
    implements StructuredSerializer<BusinessHourRecord> {
  @override
  final Iterable<Type> types = const [BusinessHourRecord, _$BusinessHourRecord];
  @override
  final String wireName = 'BusinessHourRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, BusinessHourRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.storeName;
    if (value != null) {
      result
        ..add('store_Name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.monOpen;
    if (value != null) {
      result
        ..add('Mon_Open')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.monClose;
    if (value != null) {
      result
        ..add('Mon_Close')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.tueOpen;
    if (value != null) {
      result
        ..add('Tue_Open')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.tueClose;
    if (value != null) {
      result
        ..add('Tue_Close')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.wedOpen;
    if (value != null) {
      result
        ..add('Wed_Open')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.wedClose;
    if (value != null) {
      result
        ..add('Wed_Close')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.thuOpen;
    if (value != null) {
      result
        ..add('Thu_Open')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.thuClose;
    if (value != null) {
      result
        ..add('Thu_Close')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.friOpen;
    if (value != null) {
      result
        ..add('Fri_Open')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.friClose;
    if (value != null) {
      result
        ..add('Fri_Close')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.satOpen;
    if (value != null) {
      result
        ..add('Sat_Open')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.satClose;
    if (value != null) {
      result
        ..add('Sat_Close')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.sunOpen;
    if (value != null) {
      result
        ..add('Sun_Open')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.sunClose;
    if (value != null) {
      result
        ..add('Sun-Close')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.bizHourr;
    if (value != null) {
      result
        ..add('BizHourr')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.storeRef;
    if (value != null) {
      result
        ..add('storeRef')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
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
  BusinessHourRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BusinessHourRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'store_Name':
          result.storeName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Mon_Open':
          result.monOpen = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'Mon_Close':
          result.monClose = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'Tue_Open':
          result.tueOpen = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'Tue_Close':
          result.tueClose = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'Wed_Open':
          result.wedOpen = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'Wed_Close':
          result.wedClose = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'Thu_Open':
          result.thuOpen = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'Thu_Close':
          result.thuClose = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'Fri_Open':
          result.friOpen = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'Fri_Close':
          result.friClose = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'Sat_Open':
          result.satOpen = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'Sat_Close':
          result.satClose = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'Sun_Open':
          result.sunOpen = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'Sun-Close':
          result.sunClose = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'BizHourr':
          result.bizHourr.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'storeRef':
          result.storeRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
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

class _$BusinessHourRecord extends BusinessHourRecord {
  @override
  final String? storeName;
  @override
  final DateTime? monOpen;
  @override
  final DateTime? monClose;
  @override
  final DateTime? tueOpen;
  @override
  final DateTime? tueClose;
  @override
  final DateTime? wedOpen;
  @override
  final DateTime? wedClose;
  @override
  final DateTime? thuOpen;
  @override
  final DateTime? thuClose;
  @override
  final DateTime? friOpen;
  @override
  final DateTime? friClose;
  @override
  final DateTime? satOpen;
  @override
  final DateTime? satClose;
  @override
  final DateTime? sunOpen;
  @override
  final DateTime? sunClose;
  @override
  final BuiltList<String>? bizHourr;
  @override
  final DocumentReference<Object?>? storeRef;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$BusinessHourRecord(
          [void Function(BusinessHourRecordBuilder)? updates]) =>
      (new BusinessHourRecordBuilder()..update(updates))._build();

  _$BusinessHourRecord._(
      {this.storeName,
      this.monOpen,
      this.monClose,
      this.tueOpen,
      this.tueClose,
      this.wedOpen,
      this.wedClose,
      this.thuOpen,
      this.thuClose,
      this.friOpen,
      this.friClose,
      this.satOpen,
      this.satClose,
      this.sunOpen,
      this.sunClose,
      this.bizHourr,
      this.storeRef,
      this.ffRef})
      : super._();

  @override
  BusinessHourRecord rebuild(
          void Function(BusinessHourRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BusinessHourRecordBuilder toBuilder() =>
      new BusinessHourRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BusinessHourRecord &&
        storeName == other.storeName &&
        monOpen == other.monOpen &&
        monClose == other.monClose &&
        tueOpen == other.tueOpen &&
        tueClose == other.tueClose &&
        wedOpen == other.wedOpen &&
        wedClose == other.wedClose &&
        thuOpen == other.thuOpen &&
        thuClose == other.thuClose &&
        friOpen == other.friOpen &&
        friClose == other.friClose &&
        satOpen == other.satOpen &&
        satClose == other.satClose &&
        sunOpen == other.sunOpen &&
        sunClose == other.sunClose &&
        bizHourr == other.bizHourr &&
        storeRef == other.storeRef &&
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
                                                                            0,
                                                                            storeName
                                                                                .hashCode),
                                                                        monOpen
                                                                            .hashCode),
                                                                    monClose
                                                                        .hashCode),
                                                                tueOpen
                                                                    .hashCode),
                                                            tueClose.hashCode),
                                                        wedOpen.hashCode),
                                                    wedClose.hashCode),
                                                thuOpen.hashCode),
                                            thuClose.hashCode),
                                        friOpen.hashCode),
                                    friClose.hashCode),
                                satOpen.hashCode),
                            satClose.hashCode),
                        sunOpen.hashCode),
                    sunClose.hashCode),
                bizHourr.hashCode),
            storeRef.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BusinessHourRecord')
          ..add('storeName', storeName)
          ..add('monOpen', monOpen)
          ..add('monClose', monClose)
          ..add('tueOpen', tueOpen)
          ..add('tueClose', tueClose)
          ..add('wedOpen', wedOpen)
          ..add('wedClose', wedClose)
          ..add('thuOpen', thuOpen)
          ..add('thuClose', thuClose)
          ..add('friOpen', friOpen)
          ..add('friClose', friClose)
          ..add('satOpen', satOpen)
          ..add('satClose', satClose)
          ..add('sunOpen', sunOpen)
          ..add('sunClose', sunClose)
          ..add('bizHourr', bizHourr)
          ..add('storeRef', storeRef)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class BusinessHourRecordBuilder
    implements Builder<BusinessHourRecord, BusinessHourRecordBuilder> {
  _$BusinessHourRecord? _$v;

  String? _storeName;
  String? get storeName => _$this._storeName;
  set storeName(String? storeName) => _$this._storeName = storeName;

  DateTime? _monOpen;
  DateTime? get monOpen => _$this._monOpen;
  set monOpen(DateTime? monOpen) => _$this._monOpen = monOpen;

  DateTime? _monClose;
  DateTime? get monClose => _$this._monClose;
  set monClose(DateTime? monClose) => _$this._monClose = monClose;

  DateTime? _tueOpen;
  DateTime? get tueOpen => _$this._tueOpen;
  set tueOpen(DateTime? tueOpen) => _$this._tueOpen = tueOpen;

  DateTime? _tueClose;
  DateTime? get tueClose => _$this._tueClose;
  set tueClose(DateTime? tueClose) => _$this._tueClose = tueClose;

  DateTime? _wedOpen;
  DateTime? get wedOpen => _$this._wedOpen;
  set wedOpen(DateTime? wedOpen) => _$this._wedOpen = wedOpen;

  DateTime? _wedClose;
  DateTime? get wedClose => _$this._wedClose;
  set wedClose(DateTime? wedClose) => _$this._wedClose = wedClose;

  DateTime? _thuOpen;
  DateTime? get thuOpen => _$this._thuOpen;
  set thuOpen(DateTime? thuOpen) => _$this._thuOpen = thuOpen;

  DateTime? _thuClose;
  DateTime? get thuClose => _$this._thuClose;
  set thuClose(DateTime? thuClose) => _$this._thuClose = thuClose;

  DateTime? _friOpen;
  DateTime? get friOpen => _$this._friOpen;
  set friOpen(DateTime? friOpen) => _$this._friOpen = friOpen;

  DateTime? _friClose;
  DateTime? get friClose => _$this._friClose;
  set friClose(DateTime? friClose) => _$this._friClose = friClose;

  DateTime? _satOpen;
  DateTime? get satOpen => _$this._satOpen;
  set satOpen(DateTime? satOpen) => _$this._satOpen = satOpen;

  DateTime? _satClose;
  DateTime? get satClose => _$this._satClose;
  set satClose(DateTime? satClose) => _$this._satClose = satClose;

  DateTime? _sunOpen;
  DateTime? get sunOpen => _$this._sunOpen;
  set sunOpen(DateTime? sunOpen) => _$this._sunOpen = sunOpen;

  DateTime? _sunClose;
  DateTime? get sunClose => _$this._sunClose;
  set sunClose(DateTime? sunClose) => _$this._sunClose = sunClose;

  ListBuilder<String>? _bizHourr;
  ListBuilder<String> get bizHourr =>
      _$this._bizHourr ??= new ListBuilder<String>();
  set bizHourr(ListBuilder<String>? bizHourr) => _$this._bizHourr = bizHourr;

  DocumentReference<Object?>? _storeRef;
  DocumentReference<Object?>? get storeRef => _$this._storeRef;
  set storeRef(DocumentReference<Object?>? storeRef) =>
      _$this._storeRef = storeRef;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  BusinessHourRecordBuilder() {
    BusinessHourRecord._initializeBuilder(this);
  }

  BusinessHourRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _storeName = $v.storeName;
      _monOpen = $v.monOpen;
      _monClose = $v.monClose;
      _tueOpen = $v.tueOpen;
      _tueClose = $v.tueClose;
      _wedOpen = $v.wedOpen;
      _wedClose = $v.wedClose;
      _thuOpen = $v.thuOpen;
      _thuClose = $v.thuClose;
      _friOpen = $v.friOpen;
      _friClose = $v.friClose;
      _satOpen = $v.satOpen;
      _satClose = $v.satClose;
      _sunOpen = $v.sunOpen;
      _sunClose = $v.sunClose;
      _bizHourr = $v.bizHourr?.toBuilder();
      _storeRef = $v.storeRef;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BusinessHourRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BusinessHourRecord;
  }

  @override
  void update(void Function(BusinessHourRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BusinessHourRecord build() => _build();

  _$BusinessHourRecord _build() {
    _$BusinessHourRecord _$result;
    try {
      _$result = _$v ??
          new _$BusinessHourRecord._(
              storeName: storeName,
              monOpen: monOpen,
              monClose: monClose,
              tueOpen: tueOpen,
              tueClose: tueClose,
              wedOpen: wedOpen,
              wedClose: wedClose,
              thuOpen: thuOpen,
              thuClose: thuClose,
              friOpen: friOpen,
              friClose: friClose,
              satOpen: satOpen,
              satClose: satClose,
              sunOpen: sunOpen,
              sunClose: sunClose,
              bizHourr: _bizHourr?.build(),
              storeRef: storeRef,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'bizHourr';
        _bizHourr?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'BusinessHourRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
