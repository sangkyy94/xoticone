// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_for_product_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ReviewForProductRecord> _$reviewForProductRecordSerializer =
    new _$ReviewForProductRecordSerializer();

class _$ReviewForProductRecordSerializer
    implements StructuredSerializer<ReviewForProductRecord> {
  @override
  final Iterable<Type> types = const [
    ReviewForProductRecord,
    _$ReviewForProductRecord
  ];
  @override
  final String wireName = 'ReviewForProductRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ReviewForProductRecord object,
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
    value = object.product;
    if (value != null) {
      result
        ..add('product')
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
  ReviewForProductRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ReviewForProductRecordBuilder();

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
        case 'product':
          result.product = serializers.deserialize(value,
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

class _$ReviewForProductRecord extends ReviewForProductRecord {
  @override
  final String? title;
  @override
  final String? contents;
  @override
  final int? numberLikes;
  @override
  final DocumentReference<Object?>? writer;
  @override
  final DocumentReference<Object?>? product;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final String? thumbnail;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ReviewForProductRecord(
          [void Function(ReviewForProductRecordBuilder)? updates]) =>
      (new ReviewForProductRecordBuilder()..update(updates))._build();

  _$ReviewForProductRecord._(
      {this.title,
      this.contents,
      this.numberLikes,
      this.writer,
      this.product,
      this.createdAt,
      this.updatedAt,
      this.thumbnail,
      this.ffRef})
      : super._();

  @override
  ReviewForProductRecord rebuild(
          void Function(ReviewForProductRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReviewForProductRecordBuilder toBuilder() =>
      new ReviewForProductRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReviewForProductRecord &&
        title == other.title &&
        contents == other.contents &&
        numberLikes == other.numberLikes &&
        writer == other.writer &&
        product == other.product &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        thumbnail == other.thumbnail &&
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
                        product.hashCode),
                    createdAt.hashCode),
                updatedAt.hashCode),
            thumbnail.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReviewForProductRecord')
          ..add('title', title)
          ..add('contents', contents)
          ..add('numberLikes', numberLikes)
          ..add('writer', writer)
          ..add('product', product)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('thumbnail', thumbnail)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ReviewForProductRecordBuilder
    implements Builder<ReviewForProductRecord, ReviewForProductRecordBuilder> {
  _$ReviewForProductRecord? _$v;

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

  DocumentReference<Object?>? _product;
  DocumentReference<Object?>? get product => _$this._product;
  set product(DocumentReference<Object?>? product) => _$this._product = product;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  String? _thumbnail;
  String? get thumbnail => _$this._thumbnail;
  set thumbnail(String? thumbnail) => _$this._thumbnail = thumbnail;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ReviewForProductRecordBuilder() {
    ReviewForProductRecord._initializeBuilder(this);
  }

  ReviewForProductRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _contents = $v.contents;
      _numberLikes = $v.numberLikes;
      _writer = $v.writer;
      _product = $v.product;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _thumbnail = $v.thumbnail;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReviewForProductRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReviewForProductRecord;
  }

  @override
  void update(void Function(ReviewForProductRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReviewForProductRecord build() => _build();

  _$ReviewForProductRecord _build() {
    final _$result = _$v ??
        new _$ReviewForProductRecord._(
            title: title,
            contents: contents,
            numberLikes: numberLikes,
            writer: writer,
            product: product,
            createdAt: createdAt,
            updatedAt: updatedAt,
            thumbnail: thumbnail,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
