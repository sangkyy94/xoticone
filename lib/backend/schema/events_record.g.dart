// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'events_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<EventsRecord> _$eventsRecordSerializer =
    new _$EventsRecordSerializer();

class _$EventsRecordSerializer implements StructuredSerializer<EventsRecord> {
  @override
  final Iterable<Type> types = const [EventsRecord, _$EventsRecord];
  @override
  final String wireName = 'EventsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, EventsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.eventTitle;
    if (value != null) {
      result
        ..add('event_Title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.eventDate;
    if (value != null) {
      result
        ..add('event-Date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.venueName;
    if (value != null) {
      result
        ..add('venue_Name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.venueAddress;
    if (value != null) {
      result
        ..add('venue_Address')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.dressCode;
    if (value != null) {
      result
        ..add('dress_Code')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.restriction;
    if (value != null) {
      result
        ..add('restriction')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.eventDescription;
    if (value != null) {
      result
        ..add('event_Description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.mainLanguage;
    if (value != null) {
      result
        ..add('main_Language')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nameHost;
    if (value != null) {
      result
        ..add('name-Host')
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
    value = object.phoneHost;
    if (value != null) {
      result
        ..add('phone_Host')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.facebookHost;
    if (value != null) {
      result
        ..add('facebook_Host')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.iDHost;
    if (value != null) {
      result
        ..add('ID-Host')
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
    value = object.hostRequirement;
    if (value != null) {
      result
        ..add('host_Requirement')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.hostMatched;
    if (value != null) {
      result
        ..add('host_Matched')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.closed;
    if (value != null) {
      result
        ..add('Closed')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.open;
    if (value != null) {
      result
        ..add('Open')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.photoThumbnail;
    if (value != null) {
      result
        ..add('photo_Thumbnail')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.minPax;
    if (value != null) {
      result
        ..add('Min_Pax')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.maxPax;
    if (value != null) {
      result
        ..add('Max_Pax')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.hostThumbnail;
    if (value != null) {
      result
        ..add('host_Thumbnail')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.numberParticipants;
    if (value != null) {
      result
        ..add('number_Participants')
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
  EventsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EventsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'event_Title':
          result.eventTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'event-Date':
          result.eventDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'venue_Name':
          result.venueName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'venue_Address':
          result.venueAddress = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'dress_Code':
          result.dressCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'restriction':
          result.restriction = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'event_Description':
          result.eventDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'main_Language':
          result.mainLanguage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name-Host':
          result.nameHost = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'hostRef':
          result.hostRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'phone_Host':
          result.phoneHost = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'facebook_Host':
          result.facebookHost = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ID-Host':
          result.iDHost = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Photo1':
          result.photo1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'host_Requirement':
          result.hostRequirement = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'host_Matched':
          result.hostMatched = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'Closed':
          result.closed = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'Open':
          result.open = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'photo_Thumbnail':
          result.photoThumbnail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Min_Pax':
          result.minPax = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Max_Pax':
          result.maxPax = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'host_Thumbnail':
          result.hostThumbnail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'number_Participants':
          result.numberParticipants = serializers.deserialize(value,
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

class _$EventsRecord extends EventsRecord {
  @override
  final String? eventTitle;
  @override
  final DateTime? eventDate;
  @override
  final String? venueName;
  @override
  final String? venueAddress;
  @override
  final String? dressCode;
  @override
  final String? restriction;
  @override
  final String? eventDescription;
  @override
  final String? mainLanguage;
  @override
  final String? nameHost;
  @override
  final DocumentReference<Object?>? hostRef;
  @override
  final String? phoneHost;
  @override
  final String? facebookHost;
  @override
  final String? iDHost;
  @override
  final String? photo1;
  @override
  final String? hostRequirement;
  @override
  final bool? hostMatched;
  @override
  final bool? closed;
  @override
  final bool? open;
  @override
  final String? photoThumbnail;
  @override
  final int? minPax;
  @override
  final int? maxPax;
  @override
  final String? hostThumbnail;
  @override
  final int? numberParticipants;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$EventsRecord([void Function(EventsRecordBuilder)? updates]) =>
      (new EventsRecordBuilder()..update(updates))._build();

  _$EventsRecord._(
      {this.eventTitle,
      this.eventDate,
      this.venueName,
      this.venueAddress,
      this.dressCode,
      this.restriction,
      this.eventDescription,
      this.mainLanguage,
      this.nameHost,
      this.hostRef,
      this.phoneHost,
      this.facebookHost,
      this.iDHost,
      this.photo1,
      this.hostRequirement,
      this.hostMatched,
      this.closed,
      this.open,
      this.photoThumbnail,
      this.minPax,
      this.maxPax,
      this.hostThumbnail,
      this.numberParticipants,
      this.ffRef})
      : super._();

  @override
  EventsRecord rebuild(void Function(EventsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EventsRecordBuilder toBuilder() => new EventsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EventsRecord &&
        eventTitle == other.eventTitle &&
        eventDate == other.eventDate &&
        venueName == other.venueName &&
        venueAddress == other.venueAddress &&
        dressCode == other.dressCode &&
        restriction == other.restriction &&
        eventDescription == other.eventDescription &&
        mainLanguage == other.mainLanguage &&
        nameHost == other.nameHost &&
        hostRef == other.hostRef &&
        phoneHost == other.phoneHost &&
        facebookHost == other.facebookHost &&
        iDHost == other.iDHost &&
        photo1 == other.photo1 &&
        hostRequirement == other.hostRequirement &&
        hostMatched == other.hostMatched &&
        closed == other.closed &&
        open == other.open &&
        photoThumbnail == other.photoThumbnail &&
        minPax == other.minPax &&
        maxPax == other.maxPax &&
        hostThumbnail == other.hostThumbnail &&
        numberParticipants == other.numberParticipants &&
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
                                                                            $jc($jc($jc($jc($jc($jc(0, eventTitle.hashCode), eventDate.hashCode), venueName.hashCode), venueAddress.hashCode), dressCode.hashCode),
                                                                                restriction.hashCode),
                                                                            eventDescription.hashCode),
                                                                        mainLanguage.hashCode),
                                                                    nameHost.hashCode),
                                                                hostRef.hashCode),
                                                            phoneHost.hashCode),
                                                        facebookHost.hashCode),
                                                    iDHost.hashCode),
                                                photo1.hashCode),
                                            hostRequirement.hashCode),
                                        hostMatched.hashCode),
                                    closed.hashCode),
                                open.hashCode),
                            photoThumbnail.hashCode),
                        minPax.hashCode),
                    maxPax.hashCode),
                hostThumbnail.hashCode),
            numberParticipants.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EventsRecord')
          ..add('eventTitle', eventTitle)
          ..add('eventDate', eventDate)
          ..add('venueName', venueName)
          ..add('venueAddress', venueAddress)
          ..add('dressCode', dressCode)
          ..add('restriction', restriction)
          ..add('eventDescription', eventDescription)
          ..add('mainLanguage', mainLanguage)
          ..add('nameHost', nameHost)
          ..add('hostRef', hostRef)
          ..add('phoneHost', phoneHost)
          ..add('facebookHost', facebookHost)
          ..add('iDHost', iDHost)
          ..add('photo1', photo1)
          ..add('hostRequirement', hostRequirement)
          ..add('hostMatched', hostMatched)
          ..add('closed', closed)
          ..add('open', open)
          ..add('photoThumbnail', photoThumbnail)
          ..add('minPax', minPax)
          ..add('maxPax', maxPax)
          ..add('hostThumbnail', hostThumbnail)
          ..add('numberParticipants', numberParticipants)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class EventsRecordBuilder
    implements Builder<EventsRecord, EventsRecordBuilder> {
  _$EventsRecord? _$v;

  String? _eventTitle;
  String? get eventTitle => _$this._eventTitle;
  set eventTitle(String? eventTitle) => _$this._eventTitle = eventTitle;

  DateTime? _eventDate;
  DateTime? get eventDate => _$this._eventDate;
  set eventDate(DateTime? eventDate) => _$this._eventDate = eventDate;

  String? _venueName;
  String? get venueName => _$this._venueName;
  set venueName(String? venueName) => _$this._venueName = venueName;

  String? _venueAddress;
  String? get venueAddress => _$this._venueAddress;
  set venueAddress(String? venueAddress) => _$this._venueAddress = venueAddress;

  String? _dressCode;
  String? get dressCode => _$this._dressCode;
  set dressCode(String? dressCode) => _$this._dressCode = dressCode;

  String? _restriction;
  String? get restriction => _$this._restriction;
  set restriction(String? restriction) => _$this._restriction = restriction;

  String? _eventDescription;
  String? get eventDescription => _$this._eventDescription;
  set eventDescription(String? eventDescription) =>
      _$this._eventDescription = eventDescription;

  String? _mainLanguage;
  String? get mainLanguage => _$this._mainLanguage;
  set mainLanguage(String? mainLanguage) => _$this._mainLanguage = mainLanguage;

  String? _nameHost;
  String? get nameHost => _$this._nameHost;
  set nameHost(String? nameHost) => _$this._nameHost = nameHost;

  DocumentReference<Object?>? _hostRef;
  DocumentReference<Object?>? get hostRef => _$this._hostRef;
  set hostRef(DocumentReference<Object?>? hostRef) => _$this._hostRef = hostRef;

  String? _phoneHost;
  String? get phoneHost => _$this._phoneHost;
  set phoneHost(String? phoneHost) => _$this._phoneHost = phoneHost;

  String? _facebookHost;
  String? get facebookHost => _$this._facebookHost;
  set facebookHost(String? facebookHost) => _$this._facebookHost = facebookHost;

  String? _iDHost;
  String? get iDHost => _$this._iDHost;
  set iDHost(String? iDHost) => _$this._iDHost = iDHost;

  String? _photo1;
  String? get photo1 => _$this._photo1;
  set photo1(String? photo1) => _$this._photo1 = photo1;

  String? _hostRequirement;
  String? get hostRequirement => _$this._hostRequirement;
  set hostRequirement(String? hostRequirement) =>
      _$this._hostRequirement = hostRequirement;

  bool? _hostMatched;
  bool? get hostMatched => _$this._hostMatched;
  set hostMatched(bool? hostMatched) => _$this._hostMatched = hostMatched;

  bool? _closed;
  bool? get closed => _$this._closed;
  set closed(bool? closed) => _$this._closed = closed;

  bool? _open;
  bool? get open => _$this._open;
  set open(bool? open) => _$this._open = open;

  String? _photoThumbnail;
  String? get photoThumbnail => _$this._photoThumbnail;
  set photoThumbnail(String? photoThumbnail) =>
      _$this._photoThumbnail = photoThumbnail;

  int? _minPax;
  int? get minPax => _$this._minPax;
  set minPax(int? minPax) => _$this._minPax = minPax;

  int? _maxPax;
  int? get maxPax => _$this._maxPax;
  set maxPax(int? maxPax) => _$this._maxPax = maxPax;

  String? _hostThumbnail;
  String? get hostThumbnail => _$this._hostThumbnail;
  set hostThumbnail(String? hostThumbnail) =>
      _$this._hostThumbnail = hostThumbnail;

  int? _numberParticipants;
  int? get numberParticipants => _$this._numberParticipants;
  set numberParticipants(int? numberParticipants) =>
      _$this._numberParticipants = numberParticipants;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  EventsRecordBuilder() {
    EventsRecord._initializeBuilder(this);
  }

  EventsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _eventTitle = $v.eventTitle;
      _eventDate = $v.eventDate;
      _venueName = $v.venueName;
      _venueAddress = $v.venueAddress;
      _dressCode = $v.dressCode;
      _restriction = $v.restriction;
      _eventDescription = $v.eventDescription;
      _mainLanguage = $v.mainLanguage;
      _nameHost = $v.nameHost;
      _hostRef = $v.hostRef;
      _phoneHost = $v.phoneHost;
      _facebookHost = $v.facebookHost;
      _iDHost = $v.iDHost;
      _photo1 = $v.photo1;
      _hostRequirement = $v.hostRequirement;
      _hostMatched = $v.hostMatched;
      _closed = $v.closed;
      _open = $v.open;
      _photoThumbnail = $v.photoThumbnail;
      _minPax = $v.minPax;
      _maxPax = $v.maxPax;
      _hostThumbnail = $v.hostThumbnail;
      _numberParticipants = $v.numberParticipants;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EventsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EventsRecord;
  }

  @override
  void update(void Function(EventsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EventsRecord build() => _build();

  _$EventsRecord _build() {
    final _$result = _$v ??
        new _$EventsRecord._(
            eventTitle: eventTitle,
            eventDate: eventDate,
            venueName: venueName,
            venueAddress: venueAddress,
            dressCode: dressCode,
            restriction: restriction,
            eventDescription: eventDescription,
            mainLanguage: mainLanguage,
            nameHost: nameHost,
            hostRef: hostRef,
            phoneHost: phoneHost,
            facebookHost: facebookHost,
            iDHost: iDHost,
            photo1: photo1,
            hostRequirement: hostRequirement,
            hostMatched: hostMatched,
            closed: closed,
            open: open,
            photoThumbnail: photoThumbnail,
            minPax: minPax,
            maxPax: maxPax,
            hostThumbnail: hostThumbnail,
            numberParticipants: numberParticipants,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
