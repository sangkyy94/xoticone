// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<NotificationRecord> _$notificationRecordSerializer =
    new _$NotificationRecordSerializer();

class _$NotificationRecordSerializer
    implements StructuredSerializer<NotificationRecord> {
  @override
  final Iterable<Type> types = const [NotificationRecord, _$NotificationRecord];
  @override
  final String wireName = 'NotificationRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, NotificationRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.title;
    if (value != null) {
      result
        ..add('Title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.content;
    if (value != null) {
      result
        ..add('Content')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.sender;
    if (value != null) {
      result
        ..add('Sender')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.recipient;
    if (value != null) {
      result
        ..add('recipient')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.category;
    if (value != null) {
      result
        ..add('Category')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdAt;
    if (value != null) {
      result
        ..add('Created_At')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.read;
    if (value != null) {
      result
        ..add('Read')
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
  NotificationRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NotificationRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Content':
          result.content = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Sender':
          result.sender = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'recipient':
          result.recipient.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'Category':
          result.category = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Created_At':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'Read':
          result.read = serializers.deserialize(value,
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

class _$NotificationRecord extends NotificationRecord {
  @override
  final String? title;
  @override
  final String? content;
  @override
  final DocumentReference<Object?>? sender;
  @override
  final BuiltList<DocumentReference<Object?>>? recipient;
  @override
  final String? category;
  @override
  final DateTime? createdAt;
  @override
  final bool? read;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$NotificationRecord(
          [void Function(NotificationRecordBuilder)? updates]) =>
      (new NotificationRecordBuilder()..update(updates))._build();

  _$NotificationRecord._(
      {this.title,
      this.content,
      this.sender,
      this.recipient,
      this.category,
      this.createdAt,
      this.read,
      this.ffRef})
      : super._();

  @override
  NotificationRecord rebuild(
          void Function(NotificationRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotificationRecordBuilder toBuilder() =>
      new NotificationRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationRecord &&
        title == other.title &&
        content == other.content &&
        sender == other.sender &&
        recipient == other.recipient &&
        category == other.category &&
        createdAt == other.createdAt &&
        read == other.read &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, title.hashCode), content.hashCode),
                            sender.hashCode),
                        recipient.hashCode),
                    category.hashCode),
                createdAt.hashCode),
            read.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NotificationRecord')
          ..add('title', title)
          ..add('content', content)
          ..add('sender', sender)
          ..add('recipient', recipient)
          ..add('category', category)
          ..add('createdAt', createdAt)
          ..add('read', read)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class NotificationRecordBuilder
    implements Builder<NotificationRecord, NotificationRecordBuilder> {
  _$NotificationRecord? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

  DocumentReference<Object?>? _sender;
  DocumentReference<Object?>? get sender => _$this._sender;
  set sender(DocumentReference<Object?>? sender) => _$this._sender = sender;

  ListBuilder<DocumentReference<Object?>>? _recipient;
  ListBuilder<DocumentReference<Object?>> get recipient =>
      _$this._recipient ??= new ListBuilder<DocumentReference<Object?>>();
  set recipient(ListBuilder<DocumentReference<Object?>>? recipient) =>
      _$this._recipient = recipient;

  String? _category;
  String? get category => _$this._category;
  set category(String? category) => _$this._category = category;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  bool? _read;
  bool? get read => _$this._read;
  set read(bool? read) => _$this._read = read;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  NotificationRecordBuilder() {
    NotificationRecord._initializeBuilder(this);
  }

  NotificationRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _content = $v.content;
      _sender = $v.sender;
      _recipient = $v.recipient?.toBuilder();
      _category = $v.category;
      _createdAt = $v.createdAt;
      _read = $v.read;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotificationRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NotificationRecord;
  }

  @override
  void update(void Function(NotificationRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NotificationRecord build() => _build();

  _$NotificationRecord _build() {
    _$NotificationRecord _$result;
    try {
      _$result = _$v ??
          new _$NotificationRecord._(
              title: title,
              content: content,
              sender: sender,
              recipient: _recipient?.build(),
              category: category,
              createdAt: createdAt,
              read: read,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'recipient';
        _recipient?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'NotificationRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
