import 'dart:async';
import 'dart:convert';

import 'serialization_util.dart';
import '../backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

import '../../index.dart';
import '../../main.dart';

final _handledMessageIds = <String?>{};

class PushNotificationsHandler extends StatefulWidget {
  const PushNotificationsHandler({Key? key, required this.child})
      : super(key: key);

  final Widget child;

  @override
  _PushNotificationsHandlerState createState() =>
      _PushNotificationsHandlerState();
}

class _PushNotificationsHandlerState extends State<PushNotificationsHandler> {
  bool _loading = false;

  Future handleOpenedPushNotification() async {
    if (isWeb) {
      return;
    }

    final notification = await FirebaseMessaging.instance.getInitialMessage();
    if (notification != null) {
      await _handlePushNotification(notification);
    }
    FirebaseMessaging.onMessageOpenedApp.listen(_handlePushNotification);
  }

  Future _handlePushNotification(RemoteMessage message) async {
    if (_handledMessageIds.contains(message.messageId)) {
      return;
    }
    _handledMessageIds.add(message.messageId);

    if (mounted) {
      setState(() => _loading = true);
    }
    try {
      final initialPageName = message.data['initialPageName'] as String;
      final initialParameterData = getInitialParameterData(message.data);
      final pageBuilder = pageBuilderMap[initialPageName];
      if (pageBuilder != null) {
        final page = await pageBuilder(initialParameterData);
        await Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      }
    } catch (e) {
      print('Error: $e');
    } finally {
      if (mounted) {
        setState(() => _loading = false);
      }
    }
  }

  @override
  void initState() {
    super.initState();
    handleOpenedPushNotification();
  }

  @override
  Widget build(BuildContext context) => _loading
      ? Container(
          color: Colors.transparent,
          child: Image.asset(
            'assets/images/Loading_Page.png',
            fit: BoxFit.cover,
          ),
        )
      : widget.child;
}

final pageBuilderMap = <String, Future<Widget> Function(Map<String, dynamic>)>{
  'Login': (data) async => LoginWidget(),
  'signup': (data) async => SignupWidget(),
  'Loggedin': (data) async => LoggedinWidget(),
  'signup_BusinessAccount': (data) async => SignupBusinessAccountWidget(),
  'SearchStrain': (data) async => NavBarPage(initialPage: 'SearchStrain'),
  'NearMe': (data) async => NavBarPage(initialPage: 'NearMe'),
  'Mingle': (data) async => NavBarPage(initialPage: 'Mingle'),
  'Setting': (data) async => SettingWidget(),
  'strainUpload': (data) async => StrainUploadWidget(),
  'SearchStore': (data) async => SearchStoreWidget(
        user: getParameter(data, 'user'),
        searchKeyword: getParameter(data, 'searchKeyword'),
      ),
  'StoreListView': (data) async => StoreListViewWidget(
        suburbRef: getParameter(data, 'suburbRef'),
      ),
  'storebystrain': (data) async => StorebystrainWidget(
        storebystrainRef: getParameter(data, 'storebystrainRef'),
        strainRef: getParameter(data, 'strainRef'),
      ),
  'StoreDetailView': (data) async => StoreDetailViewWidget(
        storeRef: await getDocumentParameter(
            data, 'storeRef', StoresRecord.serializer),
      ),
  'NotificationList': (data) async => NotificationListWidget(
        userRef: getParameter(data, 'userRef'),
      ),
  'SuburbList': (data) async => SuburbListWidget(
        cityRef: getParameter(data, 'cityRef'),
      ),
  'Notification_Details': (data) async => NotificationDetailsWidget(
        notificationRef: await getDocumentParameter(
            data, 'notificationRef', NotificationRecord.serializer),
      ),
  'Admin_Main': (data) async => AdminMainWidget(),
  'MyProfile': (data) async => MyProfileWidget(
        userRef: getParameter(data, 'userRef'),
      ),
  'Product_Upload': (data) async => ProductUploadWidget(
        strainRef: await getDocumentParameter(
            data, 'strainRef', StrainsRecord.serializer),
        storeRef: await getDocumentParameter(
            data, 'storeRef', StoresRecord.serializer),
      ),
  'Upload_SelectStrain': (data) async => UploadSelectStrainWidget(
        storeRef: await getDocumentParameter(
            data, 'storeRef', StoresRecord.serializer),
        productsRef: getParameter(data, 'productsRef'),
      ),
  'Store_MGT_Main': (data) async => StoreMGTMainWidget(),
  'Store_Productlist': (data) async => StoreProductlistWidget(
        storeRef: await getDocumentParameter(
            data, 'storeRef', StoresRecord.serializer),
      ),
  'StoreReviewPost': (data) async => StoreReviewPostWidget(
        storeRef: getParameter(data, 'storeRef'),
        ownerUserRef: getParameter(data, 'ownerUserRef'),
        storeRooftopRef: await getDocumentParameter(
            data, 'storeRooftopRef', StoreRooftopRecord.serializer),
      ),
  'RewardCenter': (data) async => RewardCenterWidget(
        userRef: getParameter(data, 'userRef'),
      ),
  'StampCoupon': (data) async => StampCouponWidget(
        storeRef: getParameter(data, 'storeRef'),
        couponRef: await getDocumentParameter(
            data, 'couponRef', StampCouponsRecord.serializer),
      ),
  'ProductDetailsView': (data) async => ProductDetailsViewWidget(
        productRef: await getDocumentParameter(
            data, 'productRef', ProductsRecord.serializer),
        storeRef: await getDocumentParameter(
            data, 'storeRef', StoresRecord.serializer),
        strainRef: getParameter(data, 'strainRef'),
      ),
  'Store_StoreList_Product': (data) async => StoreStoreListProductWidget(
        ownerRef: getParameter(data, 'ownerRef'),
      ),
  'ProductReviewPost': (data) async => ProductReviewPostWidget(
        productref: getParameter(data, 'productref'),
      ),
  'MyPuffStoryPost': (data) async => MyPuffStoryPostWidget(
        storeRef: getParameter(data, 'storeRef'),
        userRef: getParameter(data, 'userRef'),
      ),
  'StrainDetails': (data) async => StrainDetailsWidget(
        storebystrainRef: getParameter(data, 'storebystrainRef'),
        strainRef: getParameter(data, 'strainRef'),
      ),
  'MyCoupon': (data) async => MyCouponWidget(
        userRef: getParameter(data, 'userRef'),
      ),
  'NotificationCenter': (data) async => NotificationCenterWidget(
        userRef: getParameter(data, 'userRef'),
      ),
  'My_Referee_List': (data) async => MyRefereeListWidget(
        userRef: getParameter(data, 'userRef'),
      ),
  'My_Peers': (data) async => MyPeersWidget(
        userRef: getParameter(data, 'userRef'),
      ),
  'My_Favorites': (data) async => MyFavoritesWidget(),
  'Notice': (data) async => NoticeWidget(),
  'MemberView': (data) async => MemberViewWidget(
        userRef:
            await getDocumentParameter(data, 'userRef', UsersRecord.serializer),
      ),
  'Notice_Details': (data) async => NoticeDetailsWidget(
        noticeRef: getParameter(data, 'noticeRef'),
      ),
  'Store_Couponl_Dl_User_ist': (data) async => StoreCouponlDlUserIstWidget(
        storeRef: getParameter(data, 'storeRef'),
      ),
  'Edit_Profile': (data) async => EditProfileWidget(
        userRef:
            await getDocumentParameter(data, 'userRef', UsersRecord.serializer),
      ),
  'QRscanforShop': (data) async => QRscanforShopWidget(
        storeRef: getParameter(data, 'storeRef'),
        userRef: getParameter(data, 'userRef'),
      ),
  'Smokers_Around_Me': (data) async => SmokersAroundMeWidget(),
  'MyPuffStoryEdit': (data) async => MyPuffStoryEditWidget(
        storeRef: getParameter(data, 'storeRef'),
        userRef: getParameter(data, 'userRef'),
        puffSttoryRef: await getDocumentParameter(
            data, 'puffSttoryRef', MyPuffStoryRecord.serializer),
      ),
  'CS_Post': (data) async => CSPostWidget(
        userRef: getParameter(data, 'userRef'),
      ),
  'CS_Center_ForCustomer': (data) async => CSCenterForCustomerWidget(
        userRef: getParameter(data, 'userRef'),
      ),
  'CS_Details_ForCustomer': (data) async => CSDetailsForCustomerWidget(
        userRef: getParameter(data, 'userRef'),
        csRef: getParameter(data, 'csRef'),
      ),
  'Store_StoreList_Coupon': (data) async => StoreStoreListCouponWidget(
        ownerRef: getParameter(data, 'ownerRef'),
      ),
  'Product_Edit': (data) async => ProductEditWidget(
        strainRef: await getDocumentParameter(
            data, 'strainRef', StrainsRecord.serializer),
        storeRef: await getDocumentParameter(
            data, 'storeRef', StoresRecord.serializer),
        productRef: await getDocumentParameter(
            data, 'productRef', ProductsRecord.serializer),
      ),
  'Puff_Story_Details': (data) async => PuffStoryDetailsWidget(
        puffstoryRef: await getDocumentParameter(
            data, 'puffstoryRef', MyPuffStoryRecord.serializer),
      ),
  'PuffStoryReviewPost': (data) async => PuffStoryReviewPostWidget(
        puffstoryRef: await getDocumentParameter(
            data, 'puffstoryRef', MyPuffStoryRecord.serializer),
      ),
  'CS_Center_ForAdmin': (data) async => CSCenterForAdminWidget(
        userRef: getParameter(data, 'userRef'),
      ),
  'CS_Details_ForAdmin': (data) async => CSDetailsForAdminWidget(
        userRef: getParameter(data, 'userRef'),
        csRef: getParameter(data, 'csRef'),
      ),
  'NearMeForOversea': (data) async => NearMeForOverseaWidget(),
  'Event_List_Host': (data) async => EventListHostWidget(),
  'Event_Details-Before_Host_Request': (data) async =>
      EventDetailsBeforeHostRequestWidget(
        eventRef: await getDocumentParameter(
            data, 'eventRef', EventsRecord.serializer),
      ),
  'Event_Details': (data) async => EventDetailsWidget(
        eventRef: await getDocumentParameter(
            data, 'eventRef', EventsRecord.serializer),
      ),
  'Event_Details_Host': (data) async => EventDetailsHostWidget(
        eventRef: await getDocumentParameter(
            data, 'eventRef', EventsRecord.serializer),
      ),
  'EventReviewPost': (data) async => EventReviewPostWidget(
        eventRef: await getDocumentParameter(
            data, 'eventRef', EventsRecord.serializer),
      ),
  'Participant_List': (data) async => ParticipantListWidget(
        eventRef: await getDocumentParameter(
            data, 'eventRef', EventsRecord.serializer),
      ),
  'Event_List_Manager': (data) async => EventListManagerWidget(),
  'Create_Event_Manager': (data) async => CreateEventManagerWidget(),
  'Update_Event_Manager': (data) async => UpdateEventManagerWidget(
        eventRef: await getDocumentParameter(
            data, 'eventRef', EventsRecord.serializer),
      ),
  'HostCandidate_List': (data) async => HostCandidateListWidget(),
  'HostCandidateView_Approval': (data) async => HostCandidateViewApprovalWidget(
        candidateRef: await getDocumentParameter(
            data, 'candidateRef', HostDBRecord.serializer),
        userRef:
            await getDocumentParameter(data, 'userRef', UsersRecord.serializer),
      ),
  'Event_Details_Manager': (data) async => EventDetailsManagerWidget(
        eventRef: await getDocumentParameter(
            data, 'eventRef', EventsRecord.serializer),
      ),
  'Owner_Main': (data) async => OwnerMainWidget(
        ownerRef: getParameter(data, 'ownerRef'),
      ),
  'Owner_FindYourBusiness1': (data) async => OwnerFindYourBusiness1Widget(
        user: getParameter(data, 'user'),
      ),
  'Ownership_Verification_Request': (data) async =>
      OwnershipVerificationRequestWidget(
        storeRef: await getDocumentParameter(
            data, 'storeRef', StoresRecord.serializer),
      ),
  'Owner_Business_registration': (data) async =>
      OwnerBusinessRegistrationWidget(
        ownerRef: getParameter(data, 'ownerRef'),
      ),
  'Store_StoreList_Decorate': (data) async => StoreStoreListDecorateWidget(
        ownerRef: getParameter(data, 'ownerRef'),
      ),
  'Store_Decoration': (data) async => StoreDecorationWidget(
        storeRef: await getDocumentParameter(
            data, 'storeRef', StoresRecord.serializer),
      ),
  'Store_Customerlist': (data) async => StoreCustomerlistWidget(
        storeRef: await getDocumentParameter(
            data, 'storeRef', StoresRecord.serializer),
      ),
  'Store_StoreList_Info': (data) async => StoreStoreListInfoWidget(
        ownerRef: getParameter(data, 'ownerRef'),
      ),
  'Owner_FindYourBusiness2': (data) async => OwnerFindYourBusiness2Widget(
        user: getParameter(data, 'user'),
      ),
  'ChatPage': (data) async => ChatPageWidget(
        chatUser: await getDocumentParameter(
            data, 'chatUser', UsersRecord.serializer),
        chatRef: getParameter(data, 'chatRef'),
      ),
  'ChatList': (data) async => NavBarPage(initialPage: 'ChatList'),
  'Store_StoreList_MessageCopy': (data) async =>
      StoreStoreListMessageCopyWidget(
        ownerRef: getParameter(data, 'ownerRef'),
      ),
};

bool hasMatchingParameters(Map<String, dynamic> data, Set<String> params) =>
    params.any((param) => getParameter(data, param) != null);

Map<String, dynamic> getInitialParameterData(Map<String, dynamic> data) {
  try {
    final parameterDataStr = data['parameterData'];
    if (parameterDataStr == null ||
        parameterDataStr is! String ||
        parameterDataStr.isEmpty) {
      return {};
    }
    return jsonDecode(parameterDataStr) as Map<String, dynamic>;
  } catch (e) {
    print('Error parsing parameter data: $e');
    return {};
  }
}
