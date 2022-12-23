// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notice_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<NoticeRecord> _$noticeRecordSerializer =
    new _$NoticeRecordSerializer();

class _$NoticeRecordSerializer implements StructuredSerializer<NoticeRecord> {
  @override
  final Iterable<Type> types = const [NoticeRecord, _$NoticeRecord];
  @override
  final String wireName = 'NoticeRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, NoticeRecord object,
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
    value = object.contents;
    if (value != null) {
      result
        ..add('Contents')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.writerRef;
    if (value != null) {
      result
        ..add('WriterRef')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.writer;
    if (value != null) {
      result
        ..add('Writer')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createAt;
    if (value != null) {
      result
        ..add('Create_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.updatedAt;
    if (value != null) {
      result
        ..add('Updated_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
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
  NoticeRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NoticeRecordBuilder();

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
        case 'Contents':
          result.contents = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'WriterRef':
          result.writerRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'Writer':
          result.writer = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Create_at':
          result.createAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'Updated_at':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
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

class _$NoticeRecord extends NoticeRecord {
  @override
  final String? title;
  @override
  final String? contents;
  @override
  final DocumentReference<Object?>? writerRef;
  @override
  final String? writer;
  @override
  final DateTime? createAt;
  @override
  final DateTime? updatedAt;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$NoticeRecord([void Function(NoticeRecordBuilder)? updates]) =>
      (new NoticeRecordBuilder()..update(updates))._build();

  _$NoticeRecord._(
      {this.title,
      this.contents,
      this.writerRef,
      this.writer,
      this.createAt,
      this.updatedAt,
      this.ffRef})
      : super._();

  @override
  NoticeRecord rebuild(void Function(NoticeRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NoticeRecordBuilder toBuilder() => new NoticeRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NoticeRecord &&
        title == other.title &&
        contents == other.contents &&
        writerRef == other.writerRef &&
        writer == other.writer &&
        createAt == other.createAt &&
        updatedAt == other.updatedAt &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, title.hashCode), contents.hashCode),
                        writerRef.hashCode),
                    writer.hashCode),
                createAt.hashCode),
            updatedAt.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NoticeRecord')
          ..add('title', title)
          ..add('contents', contents)
          ..add('writerRef', writerRef)
          ..add('writer', writer)
          ..add('createAt', createAt)
          ..add('updatedAt', updatedAt)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class NoticeRecordBuilder
    implements Builder<NoticeRecord, NoticeRecordBuilder> {
  _$NoticeRecord? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _contents;
  String? get contents => _$this._contents;
  set contents(String? contents) => _$this._contents = contents;

  DocumentReference<Object?>? _writerRef;
  DocumentReference<Object?>? get writerRef => _$this._writerRef;
  set writerRef(DocumentReference<Object?>? writerRef) =>
      _$this._writerRef = writerRef;

  String? _writer;
  String? get writer => _$this._writer;
  set writer(String? writer) => _$this._writer = writer;

  DateTime? _createAt;
  DateTime? get createAt => _$this._createAt;
  set createAt(DateTime? createAt) => _$this._createAt = createAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  NoticeRecordBuilder() {
    NoticeRecord._initializeBuilder(this);
  }

  NoticeRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _contents = $v.contents;
      _writerRef = $v.writerRef;
      _writer = $v.writer;
      _createAt = $v.createAt;
      _updatedAt = $v.updatedAt;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NoticeRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NoticeRecord;
  }

  @override
  void update(void Function(NoticeRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NoticeRecord build() => _build();

  _$NoticeRecord _build() {
    final _$result = _$v ??
        new _$NoticeRecord._(
            title: title,
            contents: contents,
            writerRef: writerRef,
            writer: writer,
            createAt: createAt,
            updatedAt: updatedAt,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
