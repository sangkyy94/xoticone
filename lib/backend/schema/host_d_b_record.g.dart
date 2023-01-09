// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'host_d_b_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<HostDBRecord> _$hostDBRecordSerializer =
    new _$HostDBRecordSerializer();

class _$HostDBRecordSerializer implements StructuredSerializer<HostDBRecord> {
  @override
  final Iterable<Type> types = const [HostDBRecord, _$HostDBRecord];
  @override
  final String wireName = 'HostDBRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, HostDBRecord object,
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
    value = object.requestedDate;
    if (value != null) {
      result
        ..add('requested_Date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.requested;
    if (value != null) {
      result
        ..add('requested')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.approved;
    if (value != null) {
      result
        ..add('approved')
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
    value = object.nameHost;
    if (value != null) {
      result
        ..add('name_Host')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.hostRef;
    if (value != null) {
      result
        ..add('hostRef')
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
    value = object.phonenumberHost;
    if (value != null) {
      result
        ..add('Phonenumber_Host')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.eventThumbnail;
    if (value != null) {
      result
        ..add('event-Thumbnail')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.hostThumbnail;
    if (value != null) {
      result
        ..add('host_Thumbnail')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.emailHost;
    if (value != null) {
      result
        ..add('email_Host')
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
  HostDBRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HostDBRecordBuilder();

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
        case 'requested_Date':
          result.requestedDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'requested':
          result.requested = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'approved':
          result.approved = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'approved_Date':
          result.approvedDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'name_Host':
          result.nameHost = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'hostRef':
          result.hostRef = serializers.deserialize(value,
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
        case 'Phonenumber_Host':
          result.phonenumberHost = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'event-Thumbnail':
          result.eventThumbnail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'host_Thumbnail':
          result.hostThumbnail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'email_Host':
          result.emailHost = serializers.deserialize(value,
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

class _$HostDBRecord extends HostDBRecord {
  @override
  final String? eventName;
  @override
  final DateTime? requestedDate;
  @override
  final bool? requested;
  @override
  final bool? approved;
  @override
  final DateTime? approvedDate;
  @override
  final String? nameHost;
  @override
  final DocumentReference<Object?>? hostRef;
  @override
  final DocumentReference<Object?>? eventRef;
  @override
  final String? phonenumberHost;
  @override
  final String? eventThumbnail;
  @override
  final String? hostThumbnail;
  @override
  final String? emailHost;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$HostDBRecord([void Function(HostDBRecordBuilder)? updates]) =>
      (new HostDBRecordBuilder()..update(updates))._build();

  _$HostDBRecord._(
      {this.eventName,
      this.requestedDate,
      this.requested,
      this.approved,
      this.approvedDate,
      this.nameHost,
      this.hostRef,
      this.eventRef,
      this.phonenumberHost,
      this.eventThumbnail,
      this.hostThumbnail,
      this.emailHost,
      this.ffRef})
      : super._();

  @override
  HostDBRecord rebuild(void Function(HostDBRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HostDBRecordBuilder toBuilder() => new HostDBRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HostDBRecord &&
        eventName == other.eventName &&
        requestedDate == other.requestedDate &&
        requested == other.requested &&
        approved == other.approved &&
        approvedDate == other.approvedDate &&
        nameHost == other.nameHost &&
        hostRef == other.hostRef &&
        eventRef == other.eventRef &&
        phonenumberHost == other.phonenumberHost &&
        eventThumbnail == other.eventThumbnail &&
        hostThumbnail == other.hostThumbnail &&
        emailHost == other.emailHost &&
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
                                                $jc($jc(0, eventName.hashCode),
                                                    requestedDate.hashCode),
                                                requested.hashCode),
                                            approved.hashCode),
                                        approvedDate.hashCode),
                                    nameHost.hashCode),
                                hostRef.hashCode),
                            eventRef.hashCode),
                        phonenumberHost.hashCode),
                    eventThumbnail.hashCode),
                hostThumbnail.hashCode),
            emailHost.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HostDBRecord')
          ..add('eventName', eventName)
          ..add('requestedDate', requestedDate)
          ..add('requested', requested)
          ..add('approved', approved)
          ..add('approvedDate', approvedDate)
          ..add('nameHost', nameHost)
          ..add('hostRef', hostRef)
          ..add('eventRef', eventRef)
          ..add('phonenumberHost', phonenumberHost)
          ..add('eventThumbnail', eventThumbnail)
          ..add('hostThumbnail', hostThumbnail)
          ..add('emailHost', emailHost)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class HostDBRecordBuilder
    implements Builder<HostDBRecord, HostDBRecordBuilder> {
  _$HostDBRecord? _$v;

  String? _eventName;
  String? get eventName => _$this._eventName;
  set eventName(String? eventName) => _$this._eventName = eventName;

  DateTime? _requestedDate;
  DateTime? get requestedDate => _$this._requestedDate;
  set requestedDate(DateTime? requestedDate) =>
      _$this._requestedDate = requestedDate;

  bool? _requested;
  bool? get requested => _$this._requested;
  set requested(bool? requested) => _$this._requested = requested;

  bool? _approved;
  bool? get approved => _$this._approved;
  set approved(bool? approved) => _$this._approved = approved;

  DateTime? _approvedDate;
  DateTime? get approvedDate => _$this._approvedDate;
  set approvedDate(DateTime? approvedDate) =>
      _$this._approvedDate = approvedDate;

  String? _nameHost;
  String? get nameHost => _$this._nameHost;
  set nameHost(String? nameHost) => _$this._nameHost = nameHost;

  DocumentReference<Object?>? _hostRef;
  DocumentReference<Object?>? get hostRef => _$this._hostRef;
  set hostRef(DocumentReference<Object?>? hostRef) => _$this._hostRef = hostRef;

  DocumentReference<Object?>? _eventRef;
  DocumentReference<Object?>? get eventRef => _$this._eventRef;
  set eventRef(DocumentReference<Object?>? eventRef) =>
      _$this._eventRef = eventRef;

  String? _phonenumberHost;
  String? get phonenumberHost => _$this._phonenumberHost;
  set phonenumberHost(String? phonenumberHost) =>
      _$this._phonenumberHost = phonenumberHost;

  String? _eventThumbnail;
  String? get eventThumbnail => _$this._eventThumbnail;
  set eventThumbnail(String? eventThumbnail) =>
      _$this._eventThumbnail = eventThumbnail;

  String? _hostThumbnail;
  String? get hostThumbnail => _$this._hostThumbnail;
  set hostThumbnail(String? hostThumbnail) =>
      _$this._hostThumbnail = hostThumbnail;

  String? _emailHost;
  String? get emailHost => _$this._emailHost;
  set emailHost(String? emailHost) => _$this._emailHost = emailHost;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  HostDBRecordBuilder() {
    HostDBRecord._initializeBuilder(this);
  }

  HostDBRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _eventName = $v.eventName;
      _requestedDate = $v.requestedDate;
      _requested = $v.requested;
      _approved = $v.approved;
      _approvedDate = $v.approvedDate;
      _nameHost = $v.nameHost;
      _hostRef = $v.hostRef;
      _eventRef = $v.eventRef;
      _phonenumberHost = $v.phonenumberHost;
      _eventThumbnail = $v.eventThumbnail;
      _hostThumbnail = $v.hostThumbnail;
      _emailHost = $v.emailHost;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HostDBRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HostDBRecord;
  }

  @override
  void update(void Function(HostDBRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HostDBRecord build() => _build();

  _$HostDBRecord _build() {
    final _$result = _$v ??
        new _$HostDBRecord._(
            eventName: eventName,
            requestedDate: requestedDate,
            requested: requested,
            approved: approved,
            approvedDate: approvedDate,
            nameHost: nameHost,
            hostRef: hostRef,
            eventRef: eventRef,
            phonenumberHost: phonenumberHost,
            eventThumbnail: eventThumbnail,
            hostThumbnail: hostThumbnail,
            emailHost: emailHost,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
