// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cs_db_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CsDbRecord> _$csDbRecordSerializer = new _$CsDbRecordSerializer();

class _$CsDbRecordSerializer implements StructuredSerializer<CsDbRecord> {
  @override
  final Iterable<Type> types = const [CsDbRecord, _$CsDbRecord];
  @override
  final String wireName = 'CsDbRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, CsDbRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.userName;
    if (value != null) {
      result
        ..add('user_Name')
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
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.content;
    if (value != null) {
      result
        ..add('content')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ticketNumber;
    if (value != null) {
      result
        ..add('ticket_Number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.opened;
    if (value != null) {
      result
        ..add('opened')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.closed;
    if (value != null) {
      result
        ..add('closed')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.createdAt;
    if (value != null) {
      result
        ..add('created_At')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.closedAt;
    if (value != null) {
      result
        ..add('closed_At')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.csType;
    if (value != null) {
      result
        ..add('cs-Type')
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
  CsDbRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CsDbRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'user_Name':
          result.userName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'user_ID':
          result.userID = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'content':
          result.content = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ticket_Number':
          result.ticketNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'opened':
          result.opened = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'closed':
          result.closed = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'created_At':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'closed_At':
          result.closedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'cs-Type':
          result.csType = serializers.deserialize(value,
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

class _$CsDbRecord extends CsDbRecord {
  @override
  final String? userName;
  @override
  final String? userID;
  @override
  final String? title;
  @override
  final String? content;
  @override
  final String? ticketNumber;
  @override
  final bool? opened;
  @override
  final bool? closed;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? closedAt;
  @override
  final String? csType;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CsDbRecord([void Function(CsDbRecordBuilder)? updates]) =>
      (new CsDbRecordBuilder()..update(updates))._build();

  _$CsDbRecord._(
      {this.userName,
      this.userID,
      this.title,
      this.content,
      this.ticketNumber,
      this.opened,
      this.closed,
      this.createdAt,
      this.closedAt,
      this.csType,
      this.ffRef})
      : super._();

  @override
  CsDbRecord rebuild(void Function(CsDbRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CsDbRecordBuilder toBuilder() => new CsDbRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CsDbRecord &&
        userName == other.userName &&
        userID == other.userID &&
        title == other.title &&
        content == other.content &&
        ticketNumber == other.ticketNumber &&
        opened == other.opened &&
        closed == other.closed &&
        createdAt == other.createdAt &&
        closedAt == other.closedAt &&
        csType == other.csType &&
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
                                        $jc($jc(0, userName.hashCode),
                                            userID.hashCode),
                                        title.hashCode),
                                    content.hashCode),
                                ticketNumber.hashCode),
                            opened.hashCode),
                        closed.hashCode),
                    createdAt.hashCode),
                closedAt.hashCode),
            csType.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CsDbRecord')
          ..add('userName', userName)
          ..add('userID', userID)
          ..add('title', title)
          ..add('content', content)
          ..add('ticketNumber', ticketNumber)
          ..add('opened', opened)
          ..add('closed', closed)
          ..add('createdAt', createdAt)
          ..add('closedAt', closedAt)
          ..add('csType', csType)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CsDbRecordBuilder implements Builder<CsDbRecord, CsDbRecordBuilder> {
  _$CsDbRecord? _$v;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  String? _userID;
  String? get userID => _$this._userID;
  set userID(String? userID) => _$this._userID = userID;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

  String? _ticketNumber;
  String? get ticketNumber => _$this._ticketNumber;
  set ticketNumber(String? ticketNumber) => _$this._ticketNumber = ticketNumber;

  bool? _opened;
  bool? get opened => _$this._opened;
  set opened(bool? opened) => _$this._opened = opened;

  bool? _closed;
  bool? get closed => _$this._closed;
  set closed(bool? closed) => _$this._closed = closed;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _closedAt;
  DateTime? get closedAt => _$this._closedAt;
  set closedAt(DateTime? closedAt) => _$this._closedAt = closedAt;

  String? _csType;
  String? get csType => _$this._csType;
  set csType(String? csType) => _$this._csType = csType;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CsDbRecordBuilder() {
    CsDbRecord._initializeBuilder(this);
  }

  CsDbRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userName = $v.userName;
      _userID = $v.userID;
      _title = $v.title;
      _content = $v.content;
      _ticketNumber = $v.ticketNumber;
      _opened = $v.opened;
      _closed = $v.closed;
      _createdAt = $v.createdAt;
      _closedAt = $v.closedAt;
      _csType = $v.csType;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CsDbRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CsDbRecord;
  }

  @override
  void update(void Function(CsDbRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CsDbRecord build() => _build();

  _$CsDbRecord _build() {
    final _$result = _$v ??
        new _$CsDbRecord._(
            userName: userName,
            userID: userID,
            title: title,
            content: content,
            ticketNumber: ticketNumber,
            opened: opened,
            closed: closed,
            createdAt: createdAt,
            closedAt: closedAt,
            csType: csType,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
