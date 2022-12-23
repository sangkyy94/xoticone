// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'puff_story_review_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PuffStoryReviewRecord> _$puffStoryReviewRecordSerializer =
    new _$PuffStoryReviewRecordSerializer();

class _$PuffStoryReviewRecordSerializer
    implements StructuredSerializer<PuffStoryReviewRecord> {
  @override
  final Iterable<Type> types = const [
    PuffStoryReviewRecord,
    _$PuffStoryReviewRecord
  ];
  @override
  final String wireName = 'PuffStoryReviewRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, PuffStoryReviewRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.contents;
    if (value != null) {
      result
        ..add('contents')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.numberLikes;
    if (value != null) {
      result
        ..add('number_Likes')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.writer;
    if (value != null) {
      result
        ..add('writer')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.createdAt;
    if (value != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.updatedAt;
    if (value != null) {
      result
        ..add('updated_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.thumbnail;
    if (value != null) {
      result
        ..add('thumbnail')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.puffStory;
    if (value != null) {
      result
        ..add('PuffStory')
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
  PuffStoryReviewRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PuffStoryReviewRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'contents':
          result.contents = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'number_Likes':
          result.numberLikes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'writer':
          result.writer = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'updated_at':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'thumbnail':
          result.thumbnail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'PuffStory':
          result.puffStory = serializers.deserialize(value,
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

class _$PuffStoryReviewRecord extends PuffStoryReviewRecord {
  @override
  final String? title;
  @override
  final String? contents;
  @override
  final int? numberLikes;
  @override
  final DocumentReference<Object?>? writer;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final String? thumbnail;
  @override
  final DocumentReference<Object?>? puffStory;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PuffStoryReviewRecord(
          [void Function(PuffStoryReviewRecordBuilder)? updates]) =>
      (new PuffStoryReviewRecordBuilder()..update(updates))._build();

  _$PuffStoryReviewRecord._(
      {this.title,
      this.contents,
      this.numberLikes,
      this.writer,
      this.createdAt,
      this.updatedAt,
      this.thumbnail,
      this.puffStory,
      this.ffRef})
      : super._();

  @override
  PuffStoryReviewRecord rebuild(
          void Function(PuffStoryReviewRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PuffStoryReviewRecordBuilder toBuilder() =>
      new PuffStoryReviewRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PuffStoryReviewRecord &&
        title == other.title &&
        contents == other.contents &&
        numberLikes == other.numberLikes &&
        writer == other.writer &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        thumbnail == other.thumbnail &&
        puffStory == other.puffStory &&
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
                            $jc($jc($jc(0, title.hashCode), contents.hashCode),
                                numberLikes.hashCode),
                            writer.hashCode),
                        createdAt.hashCode),
                    updatedAt.hashCode),
                thumbnail.hashCode),
            puffStory.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PuffStoryReviewRecord')
          ..add('title', title)
          ..add('contents', contents)
          ..add('numberLikes', numberLikes)
          ..add('writer', writer)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('thumbnail', thumbnail)
          ..add('puffStory', puffStory)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PuffStoryReviewRecordBuilder
    implements Builder<PuffStoryReviewRecord, PuffStoryReviewRecordBuilder> {
  _$PuffStoryReviewRecord? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _contents;
  String? get contents => _$this._contents;
  set contents(String? contents) => _$this._contents = contents;

  int? _numberLikes;
  int? get numberLikes => _$this._numberLikes;
  set numberLikes(int? numberLikes) => _$this._numberLikes = numberLikes;

  DocumentReference<Object?>? _writer;
  DocumentReference<Object?>? get writer => _$this._writer;
  set writer(DocumentReference<Object?>? writer) => _$this._writer = writer;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  String? _thumbnail;
  String? get thumbnail => _$this._thumbnail;
  set thumbnail(String? thumbnail) => _$this._thumbnail = thumbnail;

  DocumentReference<Object?>? _puffStory;
  DocumentReference<Object?>? get puffStory => _$this._puffStory;
  set puffStory(DocumentReference<Object?>? puffStory) =>
      _$this._puffStory = puffStory;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PuffStoryReviewRecordBuilder() {
    PuffStoryReviewRecord._initializeBuilder(this);
  }

  PuffStoryReviewRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _contents = $v.contents;
      _numberLikes = $v.numberLikes;
      _writer = $v.writer;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _thumbnail = $v.thumbnail;
      _puffStory = $v.puffStory;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PuffStoryReviewRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PuffStoryReviewRecord;
  }

  @override
  void update(void Function(PuffStoryReviewRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PuffStoryReviewRecord build() => _build();

  _$PuffStoryReviewRecord _build() {
    final _$result = _$v ??
        new _$PuffStoryReviewRecord._(
            title: title,
            contents: contents,
            numberLikes: numberLikes,
            writer: writer,
            createdAt: createdAt,
            updatedAt: updatedAt,
            thumbnail: thumbnail,
            puffStory: puffStory,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
