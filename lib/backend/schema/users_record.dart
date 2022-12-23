import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'users_record.g.dart';

abstract class UsersRecord implements Built<UsersRecord, UsersRecordBuilder> {
  static Serializer<UsersRecord> get serializer => _$usersRecordSerializer;

  String? get email;

  @BuiltValueField(wireName: 'display_name')
  String? get displayName;

  @BuiltValueField(wireName: 'photo_url')
  String? get photoUrl;

  String? get uid;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  String? get nickname;

  String? get selfIntroduction;

  bool? get nonActiveBizAccount;

  bool? get manager;

  String? get passportAndFacePhoto;

  String? get passportPhoto;

  bool? get hostApproved;

  String? get linkedAccount;

  String? get facebookAccount;

  String? get twitterAccount;

  String? get instagramAccount;

  bool? get storeRegiInProgess;

  bool? get ownerVerifiInProgress;

  bool? get st1storeRegiRequested;

  bool? get st2storeRegiApproved;

  bool? get st3ownVeriRequested;

  bool? get st4ownVerified;

  bool? get storeOwner;

  DateTime? get st1storeRegiRequestedDate;

  DateTime? get st2storeRegiApprvdDate;

  DateTime? get st3ownVeriRqstdDate;

  DateTime? get st4ownVerifdDate;

  int? get userStatus;

  int? get emailOTP;

  String? get myReferralCode;

  int? get loginCount;

  int? get unreadNotiCount;

  bool? get over20;

  @BuiltValueField(wireName: 'Point')
  int? get point;

  @BuiltValueField(wireName: 'DistanceVariable')
  double? get distanceVariable;

  @BuiltValueField(wireName: 'created_at')
  DateTime? get createdAt;

  @BuiltValueField(wireName: 'updated_at')
  DateTime? get updatedAt;

  @BuiltValueField(wireName: 'language_Type')
  LanguageTypesStruct get languageType;

  @BuiltValueField(wireName: 'favorite_Stores')
  BuiltList<DocumentReference>? get favoriteStores;

  @BuiltValueField(wireName: 'favorite_Users')
  BuiltList<DocumentReference>? get favoriteUsers;

  String? get bgImage;

  @BuiltValueField(wireName: 'favorited_By')
  BuiltList<DocumentReference>? get favoritedBy;

  @BuiltValueField(wireName: 'manager_At')
  DocumentReference? get managerAt;

  @BuiltValueField(wireName: 'temp_Location')
  LatLng? get tempLocation;

  @BuiltValueField(wireName: 'temp_Image')
  String? get tempImage;

  @BuiltValueField(wireName: 'temp_Video')
  String? get tempVideo;

  @BuiltValueField(wireName: 'exposure_On_Map')
  bool? get exposureOnMap;

  @BuiltValueField(wireName: 'stmp_Cpn_STORE_List')
  BuiltList<DocumentReference>? get stmpCpnSTOREList;

  bool? get admin;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(UsersRecordBuilder builder) => builder
    ..email = ''
    ..displayName = ''
    ..photoUrl = ''
    ..uid = ''
    ..phoneNumber = ''
    ..nickname = ''
    ..selfIntroduction = ''
    ..nonActiveBizAccount = false
    ..manager = false
    ..passportAndFacePhoto = ''
    ..passportPhoto = ''
    ..hostApproved = false
    ..linkedAccount = ''
    ..facebookAccount = ''
    ..twitterAccount = ''
    ..instagramAccount = ''
    ..storeRegiInProgess = false
    ..ownerVerifiInProgress = false
    ..st1storeRegiRequested = false
    ..st2storeRegiApproved = false
    ..st3ownVeriRequested = false
    ..st4ownVerified = false
    ..storeOwner = false
    ..userStatus = 0
    ..emailOTP = 0
    ..myReferralCode = ''
    ..loginCount = 0
    ..unreadNotiCount = 0
    ..over20 = false
    ..point = 0
    ..distanceVariable = 0.0
    ..languageType = LanguageTypesStructBuilder()
    ..favoriteStores = ListBuilder()
    ..favoriteUsers = ListBuilder()
    ..bgImage = ''
    ..favoritedBy = ListBuilder()
    ..tempImage = ''
    ..tempVideo = ''
    ..exposureOnMap = false
    ..stmpCpnSTOREList = ListBuilder()
    ..admin = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  UsersRecord._();
  factory UsersRecord([void Function(UsersRecordBuilder) updates]) =
      _$UsersRecord;

  static UsersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? nickname,
  String? selfIntroduction,
  bool? nonActiveBizAccount,
  bool? manager,
  String? passportAndFacePhoto,
  String? passportPhoto,
  bool? hostApproved,
  String? linkedAccount,
  String? facebookAccount,
  String? twitterAccount,
  String? instagramAccount,
  bool? storeRegiInProgess,
  bool? ownerVerifiInProgress,
  bool? st1storeRegiRequested,
  bool? st2storeRegiApproved,
  bool? st3ownVeriRequested,
  bool? st4ownVerified,
  bool? storeOwner,
  DateTime? st1storeRegiRequestedDate,
  DateTime? st2storeRegiApprvdDate,
  DateTime? st3ownVeriRqstdDate,
  DateTime? st4ownVerifdDate,
  int? userStatus,
  int? emailOTP,
  String? myReferralCode,
  int? loginCount,
  int? unreadNotiCount,
  bool? over20,
  int? point,
  double? distanceVariable,
  DateTime? createdAt,
  DateTime? updatedAt,
  LanguageTypesStruct? languageType,
  String? bgImage,
  DocumentReference? managerAt,
  LatLng? tempLocation,
  String? tempImage,
  String? tempVideo,
  bool? exposureOnMap,
  bool? admin,
}) {
  final firestoreData = serializers.toFirestore(
    UsersRecord.serializer,
    UsersRecord(
      (u) => u
        ..email = email
        ..displayName = displayName
        ..photoUrl = photoUrl
        ..uid = uid
        ..createdTime = createdTime
        ..phoneNumber = phoneNumber
        ..nickname = nickname
        ..selfIntroduction = selfIntroduction
        ..nonActiveBizAccount = nonActiveBizAccount
        ..manager = manager
        ..passportAndFacePhoto = passportAndFacePhoto
        ..passportPhoto = passportPhoto
        ..hostApproved = hostApproved
        ..linkedAccount = linkedAccount
        ..facebookAccount = facebookAccount
        ..twitterAccount = twitterAccount
        ..instagramAccount = instagramAccount
        ..storeRegiInProgess = storeRegiInProgess
        ..ownerVerifiInProgress = ownerVerifiInProgress
        ..st1storeRegiRequested = st1storeRegiRequested
        ..st2storeRegiApproved = st2storeRegiApproved
        ..st3ownVeriRequested = st3ownVeriRequested
        ..st4ownVerified = st4ownVerified
        ..storeOwner = storeOwner
        ..st1storeRegiRequestedDate = st1storeRegiRequestedDate
        ..st2storeRegiApprvdDate = st2storeRegiApprvdDate
        ..st3ownVeriRqstdDate = st3ownVeriRqstdDate
        ..st4ownVerifdDate = st4ownVerifdDate
        ..userStatus = userStatus
        ..emailOTP = emailOTP
        ..myReferralCode = myReferralCode
        ..loginCount = loginCount
        ..unreadNotiCount = unreadNotiCount
        ..over20 = over20
        ..point = point
        ..distanceVariable = distanceVariable
        ..createdAt = createdAt
        ..updatedAt = updatedAt
        ..languageType = LanguageTypesStructBuilder()
        ..favoriteStores = null
        ..favoriteUsers = null
        ..bgImage = bgImage
        ..favoritedBy = null
        ..managerAt = managerAt
        ..tempLocation = tempLocation
        ..tempImage = tempImage
        ..tempVideo = tempVideo
        ..exposureOnMap = exposureOnMap
        ..stmpCpnSTOREList = null
        ..admin = admin,
    ),
  );

  // Handle nested data for "language_Type" field.
  addLanguageTypesStructData(firestoreData, languageType, 'language_Type');

  return firestoreData;
}
