import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'new_store_owner_register_record.g.dart';

abstract class NewStoreOwnerRegisterRecord
    implements
        Built<NewStoreOwnerRegisterRecord, NewStoreOwnerRegisterRecordBuilder> {
  static Serializer<NewStoreOwnerRegisterRecord> get serializer =>
      _$newStoreOwnerRegisterRecordSerializer;

  @BuiltValueField(wireName: 'name_Store')
  String? get nameStore;

  @BuiltValueField(wireName: 'StoreRef')
  DocumentReference? get storeRef;

  @BuiltValueField(wireName: 'name-Owner')
  String? get nameOwner;

  @BuiltValueField(wireName: 'OwnerRef')
  DocumentReference? get ownerRef;

  @BuiltValueField(wireName: 'Owner_ID')
  String? get ownerID;

  @BuiltValueField(wireName: 'Business_Registration')
  String? get businessRegistration;

  @BuiltValueField(wireName: 'License')
  String? get license;

  @BuiltValueField(wireName: 'create_At')
  DateTime? get createAt;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(NewStoreOwnerRegisterRecordBuilder builder) =>
      builder
        ..nameStore = ''
        ..nameOwner = ''
        ..ownerID = ''
        ..businessRegistration = ''
        ..license = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('NewStoreOwnerRegister');

  static Stream<NewStoreOwnerRegisterRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<NewStoreOwnerRegisterRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  NewStoreOwnerRegisterRecord._();
  factory NewStoreOwnerRegisterRecord(
          [void Function(NewStoreOwnerRegisterRecordBuilder) updates]) =
      _$NewStoreOwnerRegisterRecord;

  static NewStoreOwnerRegisterRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createNewStoreOwnerRegisterRecordData({
  String? nameStore,
  DocumentReference? storeRef,
  String? nameOwner,
  DocumentReference? ownerRef,
  String? ownerID,
  String? businessRegistration,
  String? license,
  DateTime? createAt,
}) {
  final firestoreData = serializers.toFirestore(
    NewStoreOwnerRegisterRecord.serializer,
    NewStoreOwnerRegisterRecord(
      (n) => n
        ..nameStore = nameStore
        ..storeRef = storeRef
        ..nameOwner = nameOwner
        ..ownerRef = ownerRef
        ..ownerID = ownerID
        ..businessRegistration = businessRegistration
        ..license = license
        ..createAt = createAt,
    ),
  );

  return firestoreData;
}
