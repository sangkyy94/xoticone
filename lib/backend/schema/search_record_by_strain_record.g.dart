// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_record_by_strain_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SearchRecordByStrainRecord> _$searchRecordByStrainRecordSerializer =
    new _$SearchRecordByStrainRecordSerializer();

class _$SearchRecordByStrainRecordSerializer
    implements StructuredSerializer<SearchRecordByStrainRecord> {
  @override
  final Iterable<Type> types = const [
    SearchRecordByStrainRecord,
    _$SearchRecordByStrainRecord
  ];
  @override
  final String wireName = 'SearchRecordByStrainRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, SearchRecordByStrainRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.strainName;
    if (value != null) {
      result
        ..add('strain_Name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.searchKeyword;
    if (value != null) {
      result
        ..add('Search_Keyword')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userID;
    if (value != null) {
      result
        ..add('user_ID')
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
  SearchRecordByStrainRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SearchRecordByStrainRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'strain_Name':
          result.strainName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Search_Keyword':
          result.searchKeyword = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'user_ID':
          result.userID = serializers.deserialize(value,
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

class _$SearchRecordByStrainRecord extends SearchRecordByStrainRecord {
  @override
  final String? strainName;
  @override
  final String? searchKeyword;
  @override
  final String? userID;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$SearchRecordByStrainRecord(
          [void Function(SearchRecordByStrainRecordBuilder)? updates]) =>
      (new SearchRecordByStrainRecordBuilder()..update(updates))._build();

  _$SearchRecordByStrainRecord._(
      {this.strainName, this.searchKeyword, this.userID, this.ffRef})
      : super._();

  @override
  SearchRecordByStrainRecord rebuild(
          void Function(SearchRecordByStrainRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchRecordByStrainRecordBuilder toBuilder() =>
      new SearchRecordByStrainRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SearchRecordByStrainRecord &&
        strainName == other.strainName &&
        searchKeyword == other.searchKeyword &&
        userID == other.userID &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, strainName.hashCode), searchKeyword.hashCode),
            userID.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SearchRecordByStrainRecord')
          ..add('strainName', strainName)
          ..add('searchKeyword', searchKeyword)
          ..add('userID', userID)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class SearchRecordByStrainRecordBuilder
    implements
        Builder<SearchRecordByStrainRecord, SearchRecordByStrainRecordBuilder> {
  _$SearchRecordByStrainRecord? _$v;

  String? _strainName;
  String? get strainName => _$this._strainName;
  set strainName(String? strainName) => _$this._strainName = strainName;

  String? _searchKeyword;
  String? get searchKeyword => _$this._searchKeyword;
  set searchKeyword(String? searchKeyword) =>
      _$this._searchKeyword = searchKeyword;

  String? _userID;
  String? get userID => _$this._userID;
  set userID(String? userID) => _$this._userID = userID;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  SearchRecordByStrainRecordBuilder() {
    SearchRecordByStrainRecord._initializeBuilder(this);
  }

  SearchRecordByStrainRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _strainName = $v.strainName;
      _searchKeyword = $v.searchKeyword;
      _userID = $v.userID;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchRecordByStrainRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SearchRecordByStrainRecord;
  }

  @override
  void update(void Function(SearchRecordByStrainRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SearchRecordByStrainRecord build() => _build();

  _$SearchRecordByStrainRecord _build() {
    final _$result = _$v ??
        new _$SearchRecordByStrainRecord._(
            strainName: strainName,
            searchKeyword: searchKeyword,
            userID: userID,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
