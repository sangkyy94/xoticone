// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UsersRecord> _$usersRecordSerializer = new _$UsersRecordSerializer();

class _$UsersRecordSerializer implements StructuredSerializer<UsersRecord> {
  @override
  final Iterable<Type> types = const [UsersRecord, _$UsersRecord];
  @override
  final String wireName = 'UsersRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, UsersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'language_Type',
      serializers.serialize(object.languageType,
          specifiedType: const FullType(LanguageTypesStruct)),
    ];
    Object? value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nickname;
    if (value != null) {
      result
        ..add('nickname')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.selfIntroduction;
    if (value != null) {
      result
        ..add('selfIntroduction')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nonActiveBizAccount;
    if (value != null) {
      result
        ..add('nonActiveBizAccount')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.manager;
    if (value != null) {
      result
        ..add('manager')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.passportAndFacePhoto;
    if (value != null) {
      result
        ..add('passportAndFacePhoto')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.passportPhoto;
    if (value != null) {
      result
        ..add('passportPhoto')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.hostApproved;
    if (value != null) {
      result
        ..add('hostApproved')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.linkedAccount;
    if (value != null) {
      result
        ..add('linkedAccount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.facebookAccount;
    if (value != null) {
      result
        ..add('facebookAccount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.twitterAccount;
    if (value != null) {
      result
        ..add('twitterAccount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.instagramAccount;
    if (value != null) {
      result
        ..add('instagramAccount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.storeRegiInProgess;
    if (value != null) {
      result
        ..add('storeRegiInProgess')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.ownerVerifiInProgress;
    if (value != null) {
      result
        ..add('ownerVerifiInProgress')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.st1storeRegiRequested;
    if (value != null) {
      result
        ..add('st1storeRegiRequested')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.st2storeRegiApproved;
    if (value != null) {
      result
        ..add('st2storeRegiApproved')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.st3ownVeriRequested;
    if (value != null) {
      result
        ..add('st3ownVeriRequested')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.st4ownVerified;
    if (value != null) {
      result
        ..add('st4ownVerified')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.storeOwner;
    if (value != null) {
      result
        ..add('storeOwner')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.st1storeRegiRequestedDate;
    if (value != null) {
      result
        ..add('st1storeRegiRequestedDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.st2storeRegiApprvdDate;
    if (value != null) {
      result
        ..add('st2storeRegiApprvdDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.st3ownVeriRqstdDate;
    if (value != null) {
      result
        ..add('st3ownVeriRqstdDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.st4ownVerifdDate;
    if (value != null) {
      result
        ..add('st4ownVerifdDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.userStatus;
    if (value != null) {
      result
        ..add('userStatus')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.emailOTP;
    if (value != null) {
      result
        ..add('emailOTP')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.myReferralCode;
    if (value != null) {
      result
        ..add('myReferralCode')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.loginCount;
    if (value != null) {
      result
        ..add('loginCount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.unreadNotiCount;
    if (value != null) {
      result
        ..add('unreadNotiCount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.over20;
    if (value != null) {
      result
        ..add('over20')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.point;
    if (value != null) {
      result
        ..add('Point')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.distanceVariable;
    if (value != null) {
      result
        ..add('DistanceVariable')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
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
    value = object.favoriteStores;
    if (value != null) {
      result
        ..add('favorite_Stores')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.favoriteUsers;
    if (value != null) {
      result
        ..add('favorite_Users')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.bgImage;
    if (value != null) {
      result
        ..add('bgImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.favoritedBy;
    if (value != null) {
      result
        ..add('favorited_By')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.managerAt;
    if (value != null) {
      result
        ..add('manager_At')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.tempLocation;
    if (value != null) {
      result
        ..add('temp_Location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.tempImage;
    if (value != null) {
      result
        ..add('temp_Image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.tempVideo;
    if (value != null) {
      result
        ..add('temp_Video')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.exposureOnMap;
    if (value != null) {
      result
        ..add('exposure_On_Map')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.stmpCpnSTOREList;
    if (value != null) {
      result
        ..add('stmp_Cpn_STORE_List')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.admin;
    if (value != null) {
      result
        ..add('admin')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.eventParticipationList;
    if (value != null) {
      result
        ..add('event_Participation_List')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
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
  UsersRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UsersRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'nickname':
          result.nickname = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'selfIntroduction':
          result.selfIntroduction = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'nonActiveBizAccount':
          result.nonActiveBizAccount = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'manager':
          result.manager = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'passportAndFacePhoto':
          result.passportAndFacePhoto = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'passportPhoto':
          result.passportPhoto = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'hostApproved':
          result.hostApproved = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'linkedAccount':
          result.linkedAccount = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'facebookAccount':
          result.facebookAccount = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'twitterAccount':
          result.twitterAccount = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'instagramAccount':
          result.instagramAccount = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'storeRegiInProgess':
          result.storeRegiInProgess = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'ownerVerifiInProgress':
          result.ownerVerifiInProgress = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'st1storeRegiRequested':
          result.st1storeRegiRequested = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'st2storeRegiApproved':
          result.st2storeRegiApproved = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'st3ownVeriRequested':
          result.st3ownVeriRequested = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'st4ownVerified':
          result.st4ownVerified = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'storeOwner':
          result.storeOwner = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'st1storeRegiRequestedDate':
          result.st1storeRegiRequestedDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'st2storeRegiApprvdDate':
          result.st2storeRegiApprvdDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'st3ownVeriRqstdDate':
          result.st3ownVeriRqstdDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'st4ownVerifdDate':
          result.st4ownVerifdDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'userStatus':
          result.userStatus = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'emailOTP':
          result.emailOTP = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'myReferralCode':
          result.myReferralCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'loginCount':
          result.loginCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'unreadNotiCount':
          result.unreadNotiCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'over20':
          result.over20 = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'Point':
          result.point = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'DistanceVariable':
          result.distanceVariable = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'updated_at':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'language_Type':
          result.languageType.replace(serializers.deserialize(value,
                  specifiedType: const FullType(LanguageTypesStruct))!
              as LanguageTypesStruct);
          break;
        case 'favorite_Stores':
          result.favoriteStores.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'favorite_Users':
          result.favoriteUsers.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'bgImage':
          result.bgImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'favorited_By':
          result.favoritedBy.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'manager_At':
          result.managerAt = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'temp_Location':
          result.tempLocation = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
          break;
        case 'temp_Image':
          result.tempImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'temp_Video':
          result.tempVideo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'exposure_On_Map':
          result.exposureOnMap = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'stmp_Cpn_STORE_List':
          result.stmpCpnSTOREList.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'admin':
          result.admin = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'event_Participation_List':
          result.eventParticipationList.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
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

class _$UsersRecord extends UsersRecord {
  @override
  final String? email;
  @override
  final String? displayName;
  @override
  final String? photoUrl;
  @override
  final String? uid;
  @override
  final DateTime? createdTime;
  @override
  final String? phoneNumber;
  @override
  final String? nickname;
  @override
  final String? selfIntroduction;
  @override
  final bool? nonActiveBizAccount;
  @override
  final bool? manager;
  @override
  final String? passportAndFacePhoto;
  @override
  final String? passportPhoto;
  @override
  final bool? hostApproved;
  @override
  final String? linkedAccount;
  @override
  final String? facebookAccount;
  @override
  final String? twitterAccount;
  @override
  final String? instagramAccount;
  @override
  final bool? storeRegiInProgess;
  @override
  final bool? ownerVerifiInProgress;
  @override
  final bool? st1storeRegiRequested;
  @override
  final bool? st2storeRegiApproved;
  @override
  final bool? st3ownVeriRequested;
  @override
  final bool? st4ownVerified;
  @override
  final bool? storeOwner;
  @override
  final DateTime? st1storeRegiRequestedDate;
  @override
  final DateTime? st2storeRegiApprvdDate;
  @override
  final DateTime? st3ownVeriRqstdDate;
  @override
  final DateTime? st4ownVerifdDate;
  @override
  final int? userStatus;
  @override
  final int? emailOTP;
  @override
  final String? myReferralCode;
  @override
  final int? loginCount;
  @override
  final int? unreadNotiCount;
  @override
  final bool? over20;
  @override
  final int? point;
  @override
  final double? distanceVariable;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final LanguageTypesStruct languageType;
  @override
  final BuiltList<DocumentReference<Object?>>? favoriteStores;
  @override
  final BuiltList<DocumentReference<Object?>>? favoriteUsers;
  @override
  final String? bgImage;
  @override
  final BuiltList<DocumentReference<Object?>>? favoritedBy;
  @override
  final DocumentReference<Object?>? managerAt;
  @override
  final LatLng? tempLocation;
  @override
  final String? tempImage;
  @override
  final String? tempVideo;
  @override
  final bool? exposureOnMap;
  @override
  final BuiltList<DocumentReference<Object?>>? stmpCpnSTOREList;
  @override
  final bool? admin;
  @override
  final BuiltList<DocumentReference<Object?>>? eventParticipationList;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$UsersRecord([void Function(UsersRecordBuilder)? updates]) =>
      (new UsersRecordBuilder()..update(updates))._build();

  _$UsersRecord._(
      {this.email,
      this.displayName,
      this.photoUrl,
      this.uid,
      this.createdTime,
      this.phoneNumber,
      this.nickname,
      this.selfIntroduction,
      this.nonActiveBizAccount,
      this.manager,
      this.passportAndFacePhoto,
      this.passportPhoto,
      this.hostApproved,
      this.linkedAccount,
      this.facebookAccount,
      this.twitterAccount,
      this.instagramAccount,
      this.storeRegiInProgess,
      this.ownerVerifiInProgress,
      this.st1storeRegiRequested,
      this.st2storeRegiApproved,
      this.st3ownVeriRequested,
      this.st4ownVerified,
      this.storeOwner,
      this.st1storeRegiRequestedDate,
      this.st2storeRegiApprvdDate,
      this.st3ownVeriRqstdDate,
      this.st4ownVerifdDate,
      this.userStatus,
      this.emailOTP,
      this.myReferralCode,
      this.loginCount,
      this.unreadNotiCount,
      this.over20,
      this.point,
      this.distanceVariable,
      this.createdAt,
      this.updatedAt,
      required this.languageType,
      this.favoriteStores,
      this.favoriteUsers,
      this.bgImage,
      this.favoritedBy,
      this.managerAt,
      this.tempLocation,
      this.tempImage,
      this.tempVideo,
      this.exposureOnMap,
      this.stmpCpnSTOREList,
      this.admin,
      this.eventParticipationList,
      this.ffRef})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        languageType, r'UsersRecord', 'languageType');
  }

  @override
  UsersRecord rebuild(void Function(UsersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsersRecordBuilder toBuilder() => new UsersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsersRecord &&
        email == other.email &&
        displayName == other.displayName &&
        photoUrl == other.photoUrl &&
        uid == other.uid &&
        createdTime == other.createdTime &&
        phoneNumber == other.phoneNumber &&
        nickname == other.nickname &&
        selfIntroduction == other.selfIntroduction &&
        nonActiveBizAccount == other.nonActiveBizAccount &&
        manager == other.manager &&
        passportAndFacePhoto == other.passportAndFacePhoto &&
        passportPhoto == other.passportPhoto &&
        hostApproved == other.hostApproved &&
        linkedAccount == other.linkedAccount &&
        facebookAccount == other.facebookAccount &&
        twitterAccount == other.twitterAccount &&
        instagramAccount == other.instagramAccount &&
        storeRegiInProgess == other.storeRegiInProgess &&
        ownerVerifiInProgress == other.ownerVerifiInProgress &&
        st1storeRegiRequested == other.st1storeRegiRequested &&
        st2storeRegiApproved == other.st2storeRegiApproved &&
        st3ownVeriRequested == other.st3ownVeriRequested &&
        st4ownVerified == other.st4ownVerified &&
        storeOwner == other.storeOwner &&
        st1storeRegiRequestedDate == other.st1storeRegiRequestedDate &&
        st2storeRegiApprvdDate == other.st2storeRegiApprvdDate &&
        st3ownVeriRqstdDate == other.st3ownVeriRqstdDate &&
        st4ownVerifdDate == other.st4ownVerifdDate &&
        userStatus == other.userStatus &&
        emailOTP == other.emailOTP &&
        myReferralCode == other.myReferralCode &&
        loginCount == other.loginCount &&
        unreadNotiCount == other.unreadNotiCount &&
        over20 == other.over20 &&
        point == other.point &&
        distanceVariable == other.distanceVariable &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        languageType == other.languageType &&
        favoriteStores == other.favoriteStores &&
        favoriteUsers == other.favoriteUsers &&
        bgImage == other.bgImage &&
        favoritedBy == other.favoritedBy &&
        managerAt == other.managerAt &&
        tempLocation == other.tempLocation &&
        tempImage == other.tempImage &&
        tempVideo == other.tempVideo &&
        exposureOnMap == other.exposureOnMap &&
        stmpCpnSTOREList == other.stmpCpnSTOREList &&
        admin == other.admin &&
        eventParticipationList == other.eventParticipationList &&
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
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, email.hashCode), displayName.hashCode), photoUrl.hashCode), uid.hashCode), createdTime.hashCode), phoneNumber.hashCode), nickname.hashCode), selfIntroduction.hashCode), nonActiveBizAccount.hashCode), manager.hashCode), passportAndFacePhoto.hashCode), passportPhoto.hashCode), hostApproved.hashCode), linkedAccount.hashCode), facebookAccount.hashCode), twitterAccount.hashCode), instagramAccount.hashCode), storeRegiInProgess.hashCode), ownerVerifiInProgress.hashCode), st1storeRegiRequested.hashCode), st2storeRegiApproved.hashCode), st3ownVeriRequested.hashCode), st4ownVerified.hashCode), storeOwner.hashCode), st1storeRegiRequestedDate.hashCode), st2storeRegiApprvdDate.hashCode), st3ownVeriRqstdDate.hashCode), st4ownVerifdDate.hashCode), userStatus.hashCode), emailOTP.hashCode), myReferralCode.hashCode), loginCount.hashCode), unreadNotiCount.hashCode),
                                                                                over20.hashCode),
                                                                            point.hashCode),
                                                                        distanceVariable.hashCode),
                                                                    createdAt.hashCode),
                                                                updatedAt.hashCode),
                                                            languageType.hashCode),
                                                        favoriteStores.hashCode),
                                                    favoriteUsers.hashCode),
                                                bgImage.hashCode),
                                            favoritedBy.hashCode),
                                        managerAt.hashCode),
                                    tempLocation.hashCode),
                                tempImage.hashCode),
                            tempVideo.hashCode),
                        exposureOnMap.hashCode),
                    stmpCpnSTOREList.hashCode),
                admin.hashCode),
            eventParticipationList.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UsersRecord')
          ..add('email', email)
          ..add('displayName', displayName)
          ..add('photoUrl', photoUrl)
          ..add('uid', uid)
          ..add('createdTime', createdTime)
          ..add('phoneNumber', phoneNumber)
          ..add('nickname', nickname)
          ..add('selfIntroduction', selfIntroduction)
          ..add('nonActiveBizAccount', nonActiveBizAccount)
          ..add('manager', manager)
          ..add('passportAndFacePhoto', passportAndFacePhoto)
          ..add('passportPhoto', passportPhoto)
          ..add('hostApproved', hostApproved)
          ..add('linkedAccount', linkedAccount)
          ..add('facebookAccount', facebookAccount)
          ..add('twitterAccount', twitterAccount)
          ..add('instagramAccount', instagramAccount)
          ..add('storeRegiInProgess', storeRegiInProgess)
          ..add('ownerVerifiInProgress', ownerVerifiInProgress)
          ..add('st1storeRegiRequested', st1storeRegiRequested)
          ..add('st2storeRegiApproved', st2storeRegiApproved)
          ..add('st3ownVeriRequested', st3ownVeriRequested)
          ..add('st4ownVerified', st4ownVerified)
          ..add('storeOwner', storeOwner)
          ..add('st1storeRegiRequestedDate', st1storeRegiRequestedDate)
          ..add('st2storeRegiApprvdDate', st2storeRegiApprvdDate)
          ..add('st3ownVeriRqstdDate', st3ownVeriRqstdDate)
          ..add('st4ownVerifdDate', st4ownVerifdDate)
          ..add('userStatus', userStatus)
          ..add('emailOTP', emailOTP)
          ..add('myReferralCode', myReferralCode)
          ..add('loginCount', loginCount)
          ..add('unreadNotiCount', unreadNotiCount)
          ..add('over20', over20)
          ..add('point', point)
          ..add('distanceVariable', distanceVariable)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('languageType', languageType)
          ..add('favoriteStores', favoriteStores)
          ..add('favoriteUsers', favoriteUsers)
          ..add('bgImage', bgImage)
          ..add('favoritedBy', favoritedBy)
          ..add('managerAt', managerAt)
          ..add('tempLocation', tempLocation)
          ..add('tempImage', tempImage)
          ..add('tempVideo', tempVideo)
          ..add('exposureOnMap', exposureOnMap)
          ..add('stmpCpnSTOREList', stmpCpnSTOREList)
          ..add('admin', admin)
          ..add('eventParticipationList', eventParticipationList)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class UsersRecordBuilder implements Builder<UsersRecord, UsersRecordBuilder> {
  _$UsersRecord? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _photoUrl;
  String? get photoUrl => _$this._photoUrl;
  set photoUrl(String? photoUrl) => _$this._photoUrl = photoUrl;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _nickname;
  String? get nickname => _$this._nickname;
  set nickname(String? nickname) => _$this._nickname = nickname;

  String? _selfIntroduction;
  String? get selfIntroduction => _$this._selfIntroduction;
  set selfIntroduction(String? selfIntroduction) =>
      _$this._selfIntroduction = selfIntroduction;

  bool? _nonActiveBizAccount;
  bool? get nonActiveBizAccount => _$this._nonActiveBizAccount;
  set nonActiveBizAccount(bool? nonActiveBizAccount) =>
      _$this._nonActiveBizAccount = nonActiveBizAccount;

  bool? _manager;
  bool? get manager => _$this._manager;
  set manager(bool? manager) => _$this._manager = manager;

  String? _passportAndFacePhoto;
  String? get passportAndFacePhoto => _$this._passportAndFacePhoto;
  set passportAndFacePhoto(String? passportAndFacePhoto) =>
      _$this._passportAndFacePhoto = passportAndFacePhoto;

  String? _passportPhoto;
  String? get passportPhoto => _$this._passportPhoto;
  set passportPhoto(String? passportPhoto) =>
      _$this._passportPhoto = passportPhoto;

  bool? _hostApproved;
  bool? get hostApproved => _$this._hostApproved;
  set hostApproved(bool? hostApproved) => _$this._hostApproved = hostApproved;

  String? _linkedAccount;
  String? get linkedAccount => _$this._linkedAccount;
  set linkedAccount(String? linkedAccount) =>
      _$this._linkedAccount = linkedAccount;

  String? _facebookAccount;
  String? get facebookAccount => _$this._facebookAccount;
  set facebookAccount(String? facebookAccount) =>
      _$this._facebookAccount = facebookAccount;

  String? _twitterAccount;
  String? get twitterAccount => _$this._twitterAccount;
  set twitterAccount(String? twitterAccount) =>
      _$this._twitterAccount = twitterAccount;

  String? _instagramAccount;
  String? get instagramAccount => _$this._instagramAccount;
  set instagramAccount(String? instagramAccount) =>
      _$this._instagramAccount = instagramAccount;

  bool? _storeRegiInProgess;
  bool? get storeRegiInProgess => _$this._storeRegiInProgess;
  set storeRegiInProgess(bool? storeRegiInProgess) =>
      _$this._storeRegiInProgess = storeRegiInProgess;

  bool? _ownerVerifiInProgress;
  bool? get ownerVerifiInProgress => _$this._ownerVerifiInProgress;
  set ownerVerifiInProgress(bool? ownerVerifiInProgress) =>
      _$this._ownerVerifiInProgress = ownerVerifiInProgress;

  bool? _st1storeRegiRequested;
  bool? get st1storeRegiRequested => _$this._st1storeRegiRequested;
  set st1storeRegiRequested(bool? st1storeRegiRequested) =>
      _$this._st1storeRegiRequested = st1storeRegiRequested;

  bool? _st2storeRegiApproved;
  bool? get st2storeRegiApproved => _$this._st2storeRegiApproved;
  set st2storeRegiApproved(bool? st2storeRegiApproved) =>
      _$this._st2storeRegiApproved = st2storeRegiApproved;

  bool? _st3ownVeriRequested;
  bool? get st3ownVeriRequested => _$this._st3ownVeriRequested;
  set st3ownVeriRequested(bool? st3ownVeriRequested) =>
      _$this._st3ownVeriRequested = st3ownVeriRequested;

  bool? _st4ownVerified;
  bool? get st4ownVerified => _$this._st4ownVerified;
  set st4ownVerified(bool? st4ownVerified) =>
      _$this._st4ownVerified = st4ownVerified;

  bool? _storeOwner;
  bool? get storeOwner => _$this._storeOwner;
  set storeOwner(bool? storeOwner) => _$this._storeOwner = storeOwner;

  DateTime? _st1storeRegiRequestedDate;
  DateTime? get st1storeRegiRequestedDate => _$this._st1storeRegiRequestedDate;
  set st1storeRegiRequestedDate(DateTime? st1storeRegiRequestedDate) =>
      _$this._st1storeRegiRequestedDate = st1storeRegiRequestedDate;

  DateTime? _st2storeRegiApprvdDate;
  DateTime? get st2storeRegiApprvdDate => _$this._st2storeRegiApprvdDate;
  set st2storeRegiApprvdDate(DateTime? st2storeRegiApprvdDate) =>
      _$this._st2storeRegiApprvdDate = st2storeRegiApprvdDate;

  DateTime? _st3ownVeriRqstdDate;
  DateTime? get st3ownVeriRqstdDate => _$this._st3ownVeriRqstdDate;
  set st3ownVeriRqstdDate(DateTime? st3ownVeriRqstdDate) =>
      _$this._st3ownVeriRqstdDate = st3ownVeriRqstdDate;

  DateTime? _st4ownVerifdDate;
  DateTime? get st4ownVerifdDate => _$this._st4ownVerifdDate;
  set st4ownVerifdDate(DateTime? st4ownVerifdDate) =>
      _$this._st4ownVerifdDate = st4ownVerifdDate;

  int? _userStatus;
  int? get userStatus => _$this._userStatus;
  set userStatus(int? userStatus) => _$this._userStatus = userStatus;

  int? _emailOTP;
  int? get emailOTP => _$this._emailOTP;
  set emailOTP(int? emailOTP) => _$this._emailOTP = emailOTP;

  String? _myReferralCode;
  String? get myReferralCode => _$this._myReferralCode;
  set myReferralCode(String? myReferralCode) =>
      _$this._myReferralCode = myReferralCode;

  int? _loginCount;
  int? get loginCount => _$this._loginCount;
  set loginCount(int? loginCount) => _$this._loginCount = loginCount;

  int? _unreadNotiCount;
  int? get unreadNotiCount => _$this._unreadNotiCount;
  set unreadNotiCount(int? unreadNotiCount) =>
      _$this._unreadNotiCount = unreadNotiCount;

  bool? _over20;
  bool? get over20 => _$this._over20;
  set over20(bool? over20) => _$this._over20 = over20;

  int? _point;
  int? get point => _$this._point;
  set point(int? point) => _$this._point = point;

  double? _distanceVariable;
  double? get distanceVariable => _$this._distanceVariable;
  set distanceVariable(double? distanceVariable) =>
      _$this._distanceVariable = distanceVariable;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  LanguageTypesStructBuilder? _languageType;
  LanguageTypesStructBuilder get languageType =>
      _$this._languageType ??= new LanguageTypesStructBuilder();
  set languageType(LanguageTypesStructBuilder? languageType) =>
      _$this._languageType = languageType;

  ListBuilder<DocumentReference<Object?>>? _favoriteStores;
  ListBuilder<DocumentReference<Object?>> get favoriteStores =>
      _$this._favoriteStores ??= new ListBuilder<DocumentReference<Object?>>();
  set favoriteStores(ListBuilder<DocumentReference<Object?>>? favoriteStores) =>
      _$this._favoriteStores = favoriteStores;

  ListBuilder<DocumentReference<Object?>>? _favoriteUsers;
  ListBuilder<DocumentReference<Object?>> get favoriteUsers =>
      _$this._favoriteUsers ??= new ListBuilder<DocumentReference<Object?>>();
  set favoriteUsers(ListBuilder<DocumentReference<Object?>>? favoriteUsers) =>
      _$this._favoriteUsers = favoriteUsers;

  String? _bgImage;
  String? get bgImage => _$this._bgImage;
  set bgImage(String? bgImage) => _$this._bgImage = bgImage;

  ListBuilder<DocumentReference<Object?>>? _favoritedBy;
  ListBuilder<DocumentReference<Object?>> get favoritedBy =>
      _$this._favoritedBy ??= new ListBuilder<DocumentReference<Object?>>();
  set favoritedBy(ListBuilder<DocumentReference<Object?>>? favoritedBy) =>
      _$this._favoritedBy = favoritedBy;

  DocumentReference<Object?>? _managerAt;
  DocumentReference<Object?>? get managerAt => _$this._managerAt;
  set managerAt(DocumentReference<Object?>? managerAt) =>
      _$this._managerAt = managerAt;

  LatLng? _tempLocation;
  LatLng? get tempLocation => _$this._tempLocation;
  set tempLocation(LatLng? tempLocation) => _$this._tempLocation = tempLocation;

  String? _tempImage;
  String? get tempImage => _$this._tempImage;
  set tempImage(String? tempImage) => _$this._tempImage = tempImage;

  String? _tempVideo;
  String? get tempVideo => _$this._tempVideo;
  set tempVideo(String? tempVideo) => _$this._tempVideo = tempVideo;

  bool? _exposureOnMap;
  bool? get exposureOnMap => _$this._exposureOnMap;
  set exposureOnMap(bool? exposureOnMap) =>
      _$this._exposureOnMap = exposureOnMap;

  ListBuilder<DocumentReference<Object?>>? _stmpCpnSTOREList;
  ListBuilder<DocumentReference<Object?>> get stmpCpnSTOREList =>
      _$this._stmpCpnSTOREList ??=
          new ListBuilder<DocumentReference<Object?>>();
  set stmpCpnSTOREList(
          ListBuilder<DocumentReference<Object?>>? stmpCpnSTOREList) =>
      _$this._stmpCpnSTOREList = stmpCpnSTOREList;

  bool? _admin;
  bool? get admin => _$this._admin;
  set admin(bool? admin) => _$this._admin = admin;

  ListBuilder<DocumentReference<Object?>>? _eventParticipationList;
  ListBuilder<DocumentReference<Object?>> get eventParticipationList =>
      _$this._eventParticipationList ??=
          new ListBuilder<DocumentReference<Object?>>();
  set eventParticipationList(
          ListBuilder<DocumentReference<Object?>>? eventParticipationList) =>
      _$this._eventParticipationList = eventParticipationList;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  UsersRecordBuilder() {
    UsersRecord._initializeBuilder(this);
  }

  UsersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _displayName = $v.displayName;
      _photoUrl = $v.photoUrl;
      _uid = $v.uid;
      _createdTime = $v.createdTime;
      _phoneNumber = $v.phoneNumber;
      _nickname = $v.nickname;
      _selfIntroduction = $v.selfIntroduction;
      _nonActiveBizAccount = $v.nonActiveBizAccount;
      _manager = $v.manager;
      _passportAndFacePhoto = $v.passportAndFacePhoto;
      _passportPhoto = $v.passportPhoto;
      _hostApproved = $v.hostApproved;
      _linkedAccount = $v.linkedAccount;
      _facebookAccount = $v.facebookAccount;
      _twitterAccount = $v.twitterAccount;
      _instagramAccount = $v.instagramAccount;
      _storeRegiInProgess = $v.storeRegiInProgess;
      _ownerVerifiInProgress = $v.ownerVerifiInProgress;
      _st1storeRegiRequested = $v.st1storeRegiRequested;
      _st2storeRegiApproved = $v.st2storeRegiApproved;
      _st3ownVeriRequested = $v.st3ownVeriRequested;
      _st4ownVerified = $v.st4ownVerified;
      _storeOwner = $v.storeOwner;
      _st1storeRegiRequestedDate = $v.st1storeRegiRequestedDate;
      _st2storeRegiApprvdDate = $v.st2storeRegiApprvdDate;
      _st3ownVeriRqstdDate = $v.st3ownVeriRqstdDate;
      _st4ownVerifdDate = $v.st4ownVerifdDate;
      _userStatus = $v.userStatus;
      _emailOTP = $v.emailOTP;
      _myReferralCode = $v.myReferralCode;
      _loginCount = $v.loginCount;
      _unreadNotiCount = $v.unreadNotiCount;
      _over20 = $v.over20;
      _point = $v.point;
      _distanceVariable = $v.distanceVariable;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _languageType = $v.languageType.toBuilder();
      _favoriteStores = $v.favoriteStores?.toBuilder();
      _favoriteUsers = $v.favoriteUsers?.toBuilder();
      _bgImage = $v.bgImage;
      _favoritedBy = $v.favoritedBy?.toBuilder();
      _managerAt = $v.managerAt;
      _tempLocation = $v.tempLocation;
      _tempImage = $v.tempImage;
      _tempVideo = $v.tempVideo;
      _exposureOnMap = $v.exposureOnMap;
      _stmpCpnSTOREList = $v.stmpCpnSTOREList?.toBuilder();
      _admin = $v.admin;
      _eventParticipationList = $v.eventParticipationList?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UsersRecord;
  }

  @override
  void update(void Function(UsersRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UsersRecord build() => _build();

  _$UsersRecord _build() {
    _$UsersRecord _$result;
    try {
      _$result = _$v ??
          new _$UsersRecord._(
              email: email,
              displayName: displayName,
              photoUrl: photoUrl,
              uid: uid,
              createdTime: createdTime,
              phoneNumber: phoneNumber,
              nickname: nickname,
              selfIntroduction: selfIntroduction,
              nonActiveBizAccount: nonActiveBizAccount,
              manager: manager,
              passportAndFacePhoto: passportAndFacePhoto,
              passportPhoto: passportPhoto,
              hostApproved: hostApproved,
              linkedAccount: linkedAccount,
              facebookAccount: facebookAccount,
              twitterAccount: twitterAccount,
              instagramAccount: instagramAccount,
              storeRegiInProgess: storeRegiInProgess,
              ownerVerifiInProgress: ownerVerifiInProgress,
              st1storeRegiRequested: st1storeRegiRequested,
              st2storeRegiApproved: st2storeRegiApproved,
              st3ownVeriRequested: st3ownVeriRequested,
              st4ownVerified: st4ownVerified,
              storeOwner: storeOwner,
              st1storeRegiRequestedDate: st1storeRegiRequestedDate,
              st2storeRegiApprvdDate: st2storeRegiApprvdDate,
              st3ownVeriRqstdDate: st3ownVeriRqstdDate,
              st4ownVerifdDate: st4ownVerifdDate,
              userStatus: userStatus,
              emailOTP: emailOTP,
              myReferralCode: myReferralCode,
              loginCount: loginCount,
              unreadNotiCount: unreadNotiCount,
              over20: over20,
              point: point,
              distanceVariable: distanceVariable,
              createdAt: createdAt,
              updatedAt: updatedAt,
              languageType: languageType.build(),
              favoriteStores: _favoriteStores?.build(),
              favoriteUsers: _favoriteUsers?.build(),
              bgImage: bgImage,
              favoritedBy: _favoritedBy?.build(),
              managerAt: managerAt,
              tempLocation: tempLocation,
              tempImage: tempImage,
              tempVideo: tempVideo,
              exposureOnMap: exposureOnMap,
              stmpCpnSTOREList: _stmpCpnSTOREList?.build(),
              admin: admin,
              eventParticipationList: _eventParticipationList?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'languageType';
        languageType.build();
        _$failedField = 'favoriteStores';
        _favoriteStores?.build();
        _$failedField = 'favoriteUsers';
        _favoriteUsers?.build();

        _$failedField = 'favoritedBy';
        _favoritedBy?.build();

        _$failedField = 'stmpCpnSTOREList';
        _stmpCpnSTOREList?.build();

        _$failedField = 'eventParticipationList';
        _eventParticipationList?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UsersRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
