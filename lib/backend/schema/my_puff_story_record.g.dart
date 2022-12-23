// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_puff_story_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MyPuffStoryRecord> _$myPuffStoryRecordSerializer =
    new _$MyPuffStoryRecordSerializer();

class _$MyPuffStoryRecordSerializer
    implements StructuredSerializer<MyPuffStoryRecord> {
  @override
  final Iterable<Type> types = const [MyPuffStoryRecord, _$MyPuffStoryRecord];
  @override
  final String wireName = 'MyPuffStoryRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, MyPuffStoryRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.writer;
    if (value != null) {
      result
        ..add('Writer')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.photo;
    if (value != null) {
      result
        ..add('photo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.video;
    if (value != null) {
      result
        ..add('video')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.numerLikes;
    if (value != null) {
      result
        ..add('numer_Likes')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.contents;
    if (value != null) {
      result
        ..add('contents')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userWhoLikes;
    if (value != null) {
      result
        ..add('User_Who_Likes')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.strain;
    if (value != null) {
      result
        ..add('Strain')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.mood;
    if (value != null) {
      result
        ..add('Mood')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdAt;
    if (value != null) {
      result
        ..add('Created_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.writerThumbnail;
    if (value != null) {
      result
        ..add('writer_thumbnail')
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
  MyPuffStoryRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MyPuffStoryRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Writer':
          result.writer = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'photo':
          result.photo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'video':
          result.video = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'numer_Likes':
          result.numerLikes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'contents':
          result.contents = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'User_Who_Likes':
          result.userWhoLikes = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'Strain':
          result.strain = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Mood':
          result.mood = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'writer_thumbnail':
          result.writerThumbnail = serializers.deserialize(value,
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

class _$MyPuffStoryRecord extends MyPuffStoryRecord {
  @override
  final DocumentReference<Object?>? writer;
  @override
  final String? photo;
  @override
  final String? video;
  @override
  final int? numerLikes;
  @override
  final String? contents;
  @override
  final DocumentReference<Object?>? userWhoLikes;
  @override
  final String? strain;
  @override
  final String? mood;
  @override
  final DateTime? createdAt;
  @override
  final String? writerThumbnail;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$MyPuffStoryRecord(
          [void Function(MyPuffStoryRecordBuilder)? updates]) =>
      (new MyPuffStoryRecordBuilder()..update(updates))._build();

  _$MyPuffStoryRecord._(
      {this.writer,
      this.photo,
      this.video,
      this.numerLikes,
      this.contents,
      this.userWhoLikes,
      this.strain,
      this.mood,
      this.createdAt,
      this.writerThumbnail,
      this.ffRef})
      : super._();

  @override
  MyPuffStoryRecord rebuild(void Function(MyPuffStoryRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MyPuffStoryRecordBuilder toBuilder() =>
      new MyPuffStoryRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MyPuffStoryRecord &&
        writer == other.writer &&
        photo == other.photo &&
        video == other.video &&
        numerLikes == other.numerLikes &&
        contents == other.contents &&
        userWhoLikes == other.userWhoLikes &&
        strain == other.strain &&
        mood == other.mood &&
        createdAt == other.createdAt &&
        writerThumbnail == other.writerThumbnail &&
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
                                        $jc($jc(0, writer.hashCode),
                                            photo.hashCode),
                                        video.hashCode),
                                    numerLikes.hashCode),
                                contents.hashCode),
                            userWhoLikes.hashCode),
                        strain.hashCode),
                    mood.hashCode),
                createdAt.hashCode),
            writerThumbnail.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MyPuffStoryRecord')
          ..add('writer', writer)
          ..add('photo', photo)
          ..add('video', video)
          ..add('numerLikes', numerLikes)
          ..add('contents', contents)
          ..add('userWhoLikes', userWhoLikes)
          ..add('strain', strain)
          ..add('mood', mood)
          ..add('createdAt', createdAt)
          ..add('writerThumbnail', writerThumbnail)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class MyPuffStoryRecordBuilder
    implements Builder<MyPuffStoryRecord, MyPuffStoryRecordBuilder> {
  _$MyPuffStoryRecord? _$v;

  DocumentReference<Object?>? _writer;
  DocumentReference<Object?>? get writer => _$this._writer;
  set writer(DocumentReference<Object?>? writer) => _$this._writer = writer;

  String? _photo;
  String? get photo => _$this._photo;
  set photo(String? photo) => _$this._photo = photo;

  String? _video;
  String? get video => _$this._video;
  set video(String? video) => _$this._video = video;

  int? _numerLikes;
  int? get numerLikes => _$this._numerLikes;
  set numerLikes(int? numerLikes) => _$this._numerLikes = numerLikes;

  String? _contents;
  String? get contents => _$this._contents;
  set contents(String? contents) => _$this._contents = contents;

  DocumentReference<Object?>? _userWhoLikes;
  DocumentReference<Object?>? get userWhoLikes => _$this._userWhoLikes;
  set userWhoLikes(DocumentReference<Object?>? userWhoLikes) =>
      _$this._userWhoLikes = userWhoLikes;

  String? _strain;
  String? get strain => _$this._strain;
  set strain(String? strain) => _$this._strain = strain;

  String? _mood;
  String? get mood => _$this._mood;
  set mood(String? mood) => _$this._mood = mood;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  String? _writerThumbnail;
  String? get writerThumbnail => _$this._writerThumbnail;
  set writerThumbnail(String? writerThumbnail) =>
      _$this._writerThumbnail = writerThumbnail;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  MyPuffStoryRecordBuilder() {
    MyPuffStoryRecord._initializeBuilder(this);
  }

  MyPuffStoryRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _writer = $v.writer;
      _photo = $v.photo;
      _video = $v.video;
      _numerLikes = $v.numerLikes;
      _contents = $v.contents;
      _userWhoLikes = $v.userWhoLikes;
      _strain = $v.strain;
      _mood = $v.mood;
      _createdAt = $v.createdAt;
      _writerThumbnail = $v.writerThumbnail;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MyPuffStoryRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MyPuffStoryRecord;
  }

  @override
  void update(void Function(MyPuffStoryRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MyPuffStoryRecord build() => _build();

  _$MyPuffStoryRecord _build() {
    final _$result = _$v ??
        new _$MyPuffStoryRecord._(
            writer: writer,
            photo: photo,
            video: video,
            numerLikes: numerLikes,
            contents: contents,
            userWhoLikes: userWhoLikes,
            strain: strain,
            mood: mood,
            createdAt: createdAt,
            writerThumbnail: writerThumbnail,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
