// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'participant_d_b_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ParticipantDBRecord> _$participantDBRecordSerializer =
    new _$ParticipantDBRecordSerializer();

class _$ParticipantDBRecordSerializer
    implements StructuredSerializer<ParticipantDBRecord> {
  @override
  final Iterable<Type> types = const [
    ParticipantDBRecord,
    _$ParticipantDBRecord
  ];
  @override
  final String wireName = 'ParticipantDBRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ParticipantDBRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.eventName;
    if (value != null) {
      result
        ..add('event_Name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.joinRequested;
    if (value != null) {
      result
        ..add('join_Requested')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.requestedDate;
    if (value != null) {
      result
        ..add('requested_Date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.joinApproved;
    if (value != null) {
      result
        ..add('join_Approved')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.approvedDate;
    if (value != null) {
      result
        ..add('approved_Date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.participantRef;
    if (value != null) {
      result
        ..add('participantRef')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.eventRef;
    if (value != null) {
      result
        ..add('eventRef')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.participantName;
    if (value != null) {
      result
        ..add('participant_Name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.participantEmail;
    if (value != null) {
      result
        ..add('participant_Email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.participantThumbnail;
    if (value != null) {
      result
        ..add('participant_thumbnail')
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
  ParticipantDBRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ParticipantDBRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'event_Name':
          result.eventName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'join_Requested':
          result.joinRequested = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'requested_Date':
          result.requestedDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'join_Approved':
          result.joinApproved = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'approved_Date':
          result.approvedDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'participantRef':
          result.participantRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'eventRef':
          result.eventRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'participant_Name':
          result.participantName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'participant_Email':
          result.participantEmail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'participant_thumbnail':
          result.participantThumbnail = serializers.deserialize(value,
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

class _$ParticipantDBRecord extends ParticipantDBRecord {
  @override
  final String? eventName;
  @override
  final bool? joinRequested;
  @override
  final DateTime? requestedDate;
  @override
  final bool? joinApproved;
  @override
  final DateTime? approvedDate;
  @override
  final DocumentReference<Object?>? participantRef;
  @override
  final DocumentReference<Object?>? eventRef;
  @override
  final String? participantName;
  @override
  final String? participantEmail;
  @override
  final String? participantThumbnail;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ParticipantDBRecord(
          [void Function(ParticipantDBRecordBuilder)? updates]) =>
      (new ParticipantDBRecordBuilder()..update(updates))._build();

  _$ParticipantDBRecord._(
      {this.eventName,
      this.joinRequested,
      this.requestedDate,
      this.joinApproved,
      this.approvedDate,
      this.participantRef,
      this.eventRef,
      this.participantName,
      this.participantEmail,
      this.participantThumbnail,
      this.ffRef})
      : super._();

  @override
  ParticipantDBRecord rebuild(
          void Function(ParticipantDBRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ParticipantDBRecordBuilder toBuilder() =>
      new ParticipantDBRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ParticipantDBRecord &&
        eventName == other.eventName &&
        joinRequested == other.joinRequested &&
        requestedDate == other.requestedDate &&
        joinApproved == other.joinApproved &&
        approvedDate == other.approvedDate &&
        participantRef == other.participantRef &&
        eventRef == other.eventRef &&
        participantName == other.participantName &&
        participantEmail == other.participantEmail &&
        participantThumbnail == other.participantThumbnail &&
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
                                        $jc($jc(0, eventName.hashCode),
                                            joinRequested.hashCode),
                                        requestedDate.hashCode),
                                    joinApproved.hashCode),
                                approvedDate.hashCode),
                            participantRef.hashCode),
                        eventRef.hashCode),
                    participantName.hashCode),
                participantEmail.hashCode),
            participantThumbnail.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ParticipantDBRecord')
          ..add('eventName', eventName)
          ..add('joinRequested', joinRequested)
          ..add('requestedDate', requestedDate)
          ..add('joinApproved', joinApproved)
          ..add('approvedDate', approvedDate)
          ..add('participantRef', participantRef)
          ..add('eventRef', eventRef)
          ..add('participantName', participantName)
          ..add('participantEmail', participantEmail)
          ..add('participantThumbnail', participantThumbnail)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ParticipantDBRecordBuilder
    implements Builder<ParticipantDBRecord, ParticipantDBRecordBuilder> {
  _$ParticipantDBRecord? _$v;

  String? _eventName;
  String? get eventName => _$this._eventName;
  set eventName(String? eventName) => _$this._eventName = eventName;

  bool? _joinRequested;
  bool? get joinRequested => _$this._joinRequested;
  set joinRequested(bool? joinRequested) =>
      _$this._joinRequested = joinRequested;

  DateTime? _requestedDate;
  DateTime? get requestedDate => _$this._requestedDate;
  set requestedDate(DateTime? requestedDate) =>
      _$this._requestedDate = requestedDate;

  bool? _joinApproved;
  bool? get joinApproved => _$this._joinApproved;
  set joinApproved(bool? joinApproved) => _$this._joinApproved = joinApproved;

  DateTime? _approvedDate;
  DateTime? get approvedDate => _$this._approvedDate;
  set approvedDate(DateTime? approvedDate) =>
      _$this._approvedDate = approvedDate;

  DocumentReference<Object?>? _participantRef;
  DocumentReference<Object?>? get participantRef => _$this._participantRef;
  set participantRef(DocumentReference<Object?>? participantRef) =>
      _$this._participantRef = participantRef;

  DocumentReference<Object?>? _eventRef;
  DocumentReference<Object?>? get eventRef => _$this._eventRef;
  set eventRef(DocumentReference<Object?>? eventRef) =>
      _$this._eventRef = eventRef;

  String? _participantName;
  String? get participantName => _$this._participantName;
  set participantName(String? participantName) =>
      _$this._participantName = participantName;

  String? _participantEmail;
  String? get participantEmail => _$this._participantEmail;
  set participantEmail(String? participantEmail) =>
      _$this._participantEmail = participantEmail;

  String? _participantThumbnail;
  String? get participantThumbnail => _$this._participantThumbnail;
  set participantThumbnail(String? participantThumbnail) =>
      _$this._participantThumbnail = participantThumbnail;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ParticipantDBRecordBuilder() {
    ParticipantDBRecord._initializeBuilder(this);
  }

  ParticipantDBRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _eventName = $v.eventName;
      _joinRequested = $v.joinRequested;
      _requestedDate = $v.requestedDate;
      _joinApproved = $v.joinApproved;
      _approvedDate = $v.approvedDate;
      _participantRef = $v.participantRef;
      _eventRef = $v.eventRef;
      _participantName = $v.participantName;
      _participantEmail = $v.participantEmail;
      _participantThumbnail = $v.participantThumbnail;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ParticipantDBRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ParticipantDBRecord;
  }

  @override
  void update(void Function(ParticipantDBRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ParticipantDBRecord build() => _build();

  _$ParticipantDBRecord _build() {
    final _$result = _$v ??
        new _$ParticipantDBRecord._(
            eventName: eventName,
            joinRequested: joinRequested,
            requestedDate: requestedDate,
            joinApproved: joinApproved,
            approvedDate: approvedDate,
            participantRef: participantRef,
            eventRef: eventRef,
            participantName: participantName,
            participantEmail: participantEmail,
            participantThumbnail: participantThumbnail,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
