import '../admin_main/admin_main_widget.dart';
import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../c_s_center_for_customer/c_s_center_for_customer_widget.dart';
import '../components/modal_logout_widget.dart';
import '../event_list_host/event_list_host_widget.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../my_coupon/my_coupon_widget.dart';
import '../my_favorites/my_favorites_widget.dart';
import '../my_peers/my_peers_widget.dart';
import '../my_profile/my_profile_widget.dart';
import '../my_referee_list/my_referee_list_widget.dart';
import '../notice/notice_widget.dart';
import '../notification_center/notification_center_widget.dart';
import '../owner_main/owner_main_widget.dart';
import '../q_rscanfor_shop/q_rscanfor_shop_widget.dart';
import '../reward_center/reward_center_widget.dart';
import '../search_store/search_store_widget.dart';
import '../setting/setting_widget.dart';
import '../store_detail_view/store_detail_view_widget.dart';
import '../store_store_list_coupon/store_store_list_coupon_widget.dart';
import '../store_store_list_decorate/store_store_list_decorate_widget.dart';
import '../store_store_list_info/store_store_list_info_widget.dart';
import '../store_store_list_product/store_store_list_product_widget.dart';
import '../suburb_list/suburb_list_widget.dart';
import '../flutter_flow/permissions_util.dart';
import 'package:badges/badges.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({
    Key? key,
    this.userRef,
  }) : super(key: key);

  final DocumentReference? userRef;

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> with TickerProviderStateMixin {
  TextEditingController? textController;
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await requestPermission(locationPermission);
    });

    textController = TextEditingController();
  }

  @override
  void dispose() {
    _unfocusNode.dispose();
    textController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      drawer: Drawer(
        elevation: 16,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xFF3B5855),
                        ),
                      ),
                    ),
                    if (valueOrDefault<bool>(
                            currentUserDocument?.admin, false) ==
                        true)
                      Align(
                        alignment: AlignmentDirectional(-0.84, 0.82),
                        child: AuthUserStreamWidget(
                          builder: (context) => FFButtonWidget(
                            onPressed: () async {
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => AdminMainWidget(),
                                ),
                              );
                            },
                            text: FFLocalizations.of(context).getText(
                              '2644l82p' /* Admin */,
                            ),
                            options: FFButtonOptions(
                              width: 130,
                              height: 40,
                              color: FlutterFlowTheme.of(context).primaryColor,
                              textStyle: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                  ),
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                      ),
                    Align(
                      alignment: AlignmentDirectional(-0.85, -0.33),
                      child: AuthUserStreamWidget(
                        builder: (context) => ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.network(
                            currentUserPhoto,
                            width: 80,
                            height: 80,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.8, -0.3),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(40, 0, 0, 0),
                        child: Container(
                          width: 200,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Color(0x00FFFFFF),
                          ),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-1, -0.58),
                                  child: AuthUserStreamWidget(
                                    builder: (context) => Text(
                                      currentUserDisplayName,
                                      textAlign: TextAlign.start,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: FlutterFlowTheme.of(context)
                                                .white,
                                          ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-1, -0.3),
                                  child: Text(
                                    currentUserEmail,
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .white,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-1, -0.02),
                                  child: AuthUserStreamWidget(
                                    builder: (context) => Text(
                                      valueOrDefault(
                                              currentUserDocument?.point, 0)
                                          .toString(),
                                      textAlign: TextAlign.start,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: FlutterFlowTheme.of(context)
                                                .white,
                                          ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-1, 0.3),
                                  child: AuthUserStreamWidget(
                                    builder: (context) => Text(
                                      valueOrDefault(
                                          currentUserDocument?.myReferralCode,
                                          ''),
                                      textAlign: TextAlign.start,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: FlutterFlowTheme.of(context)
                                                .white,
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                title: Text(
                  FFLocalizations.of(context).getText(
                    '5imwnhom' /* For More Value */,
                  ),
                  style: FlutterFlowTheme.of(context).subtitle2.override(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                ),
                tileColor: Color(0xFFB1C6C4),
                dense: false,
              ),
              InkWell(
                onTap: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyCouponWidget(
                        userRef: currentUserReference,
                      ),
                    ),
                  );
                },
                child: ListTile(
                  leading: Icon(
                    Icons.list_outlined,
                    color: Color(0xFF618682),
                  ),
                  title: Text(
                    FFLocalizations.of(context).getText(
                      'y6o9kl1e' /* My Coupons */,
                    ),
                    style: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                  ),
                  tileColor: Color(0xFFDBEBE7),
                  dense: false,
                ),
              ),
              InkWell(
                onTap: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyRefereeListWidget(
                        userRef: currentUserReference,
                      ),
                    ),
                  );
                },
                child: ListTile(
                  leading: Icon(
                    Icons.people_outline_rounded,
                    color: Color(0xFF618682),
                  ),
                  title: Text(
                    FFLocalizations.of(context).getText(
                      'mzj2arxz' /* My Referees */,
                    ),
                    style: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                  ),
                  tileColor: Color(0xFFDBEBE7),
                  dense: false,
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.group_add,
                  color: Color(0xFF618682),
                ),
                title: Text(
                  FFLocalizations.of(context).getText(
                    'wtyinzvp' /* Invite Friend */,
                  ),
                  style: FlutterFlowTheme.of(context).subtitle2.override(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                ),
                tileColor: Color(0xFFDBEBE7),
                dense: false,
              ),
              ListTile(
                title: Text(
                  FFLocalizations.of(context).getText(
                    '460cph1f' /* My Account */,
                  ),
                  style: FlutterFlowTheme.of(context).subtitle2.override(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                ),
                tileColor: Color(0xFFB1C6C4),
                dense: false,
              ),
              InkWell(
                onTap: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyPeersWidget(
                        userRef: currentUserReference,
                      ),
                    ),
                  );
                },
                child: ListTile(
                  leading: Icon(
                    Icons.people_rounded,
                    color: Color(0xFF618682),
                  ),
                  title: Text(
                    FFLocalizations.of(context).getText(
                      '857gcmt4' /* My Peers */,
                    ),
                    style: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                  ),
                  tileColor: Color(0xFFDBEBE7),
                  dense: false,
                ),
              ),
              InkWell(
                onTap: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyProfileWidget(
                        userRef: currentUserReference,
                      ),
                    ),
                  );
                },
                child: ListTile(
                  leading: Icon(
                    Icons.money_rounded,
                    color: Color(0xFF618682),
                  ),
                  title: Text(
                    FFLocalizations.of(context).getText(
                      'yerifyi1' /* My Profile */,
                    ),
                    style: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                  ),
                  tileColor: Color(0xFFDBEBE7),
                  dense: false,
                ),
              ),
              StreamBuilder<List<StoresRecord>>(
                stream: queryStoresRecord(),
                builder: (context, snapshot) {
                  // Customize what your widget looks like when it's loading.
                  if (!snapshot.hasData) {
                    return Center(
                      child: SizedBox(
                        width: 50,
                        height: 50,
                        child: SpinKitRipple(
                          color: FlutterFlowTheme.of(context).primaryColor,
                          size: 50,
                        ),
                      ),
                    );
                  }
                  List<StoresRecord> listTileMyFavoritesStoresRecordList =
                      snapshot.data!;
                  return InkWell(
                    onTap: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MyFavoritesWidget(),
                        ),
                      );
                    },
                    child: ListTile(
                      leading: Icon(
                        Icons.favorite_outlined,
                        color: Color(0xFF618682),
                      ),
                      title: Text(
                        FFLocalizations.of(context).getText(
                          'gmz4pxen' /* My Favorites */,
                        ),
                        style: FlutterFlowTheme.of(context).subtitle2.override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.of(context).secondaryText,
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                            ),
                      ),
                      tileColor: Color(0xFFDBEBE7),
                      dense: false,
                    ),
                  );
                },
              ),
              InkWell(
                onTap: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RewardCenterWidget(
                        userRef: currentUserReference,
                      ),
                    ),
                  );
                },
                child: ListTile(
                  leading: Icon(
                    Icons.event_sharp,
                    color: Color(0xFF618682),
                  ),
                  title: Text(
                    FFLocalizations.of(context).getText(
                      'ulamhxxo' /* Reward Center */,
                    ),
                    style: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                  ),
                  tileColor: Color(0xFFDBEBE7),
                  dense: false,
                ),
              ),
              InkWell(
                onTap: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EventListHostWidget(),
                    ),
                  );
                },
                child: ListTile(
                  leading: Icon(
                    Icons.event_note_outlined,
                    color: Color(0xFF618682),
                  ),
                  title: Text(
                    FFLocalizations.of(context).getText(
                      'u0n5cmbu' /* Event List */,
                    ),
                    style: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                  ),
                  tileColor: Color(0xFFDBEBE7),
                  dense: false,
                ),
              ),
              ListTile(
                title: Text(
                  FFLocalizations.of(context).getText(
                    'izwqrumh' /* General */,
                  ),
                  style: FlutterFlowTheme.of(context).subtitle2.override(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                ),
                tileColor: Color(0xFFB1C6C4),
                dense: false,
              ),
              InkWell(
                onTap: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NoticeWidget(),
                    ),
                  );
                },
                child: ListTile(
                  leading: Icon(
                    Icons.event_note,
                    color: Color(0xFF618682),
                  ),
                  title: Text(
                    FFLocalizations.of(context).getText(
                      'tsptp8yj' /* Notice */,
                    ),
                    style: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                  ),
                  tileColor: Color(0xFFDBEBE7),
                  dense: false,
                ),
              ),
              InkWell(
                onTap: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CSCenterForCustomerWidget(
                        userRef: currentUserReference,
                      ),
                    ),
                  );
                },
                child: ListTile(
                  leading: Icon(
                    Icons.perm_phone_msg_sharp,
                    color: Color(0xFF618682),
                  ),
                  title: Text(
                    FFLocalizations.of(context).getText(
                      '8kwqf0hb' /* Customer Service */,
                    ),
                    style: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                  ),
                  tileColor: Color(0xFFDBEBE7),
                  dense: false,
                ),
              ),
              InkWell(
                onTap: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SettingWidget(),
                    ),
                  );
                },
                child: ListTile(
                  leading: Icon(
                    Icons.settings_outlined,
                    color: Color(0xFF618682),
                  ),
                  title: Text(
                    FFLocalizations.of(context).getText(
                      'ddpjhlci' /* Setting  */,
                    ),
                    style: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                  ),
                  tileColor: Color(0xFFDBEBE7),
                  dense: false,
                ),
              ),
              InkWell(
                onTap: () async {
                  await showModalBottomSheet(
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    enableDrag: false,
                    context: context,
                    builder: (context) {
                      return Padding(
                        padding: MediaQuery.of(context).viewInsets,
                        child: ModalLogoutWidget(),
                      );
                    },
                  ).then((value) => setState(() {}));
                },
                child: ListTile(
                  leading: Icon(
                    Icons.logout,
                    color: Color(0xFF618682),
                  ),
                  title: Text(
                    FFLocalizations.of(context).getText(
                      'u1t4l5j1' /* Log Out */,
                    ),
                    style: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                  ),
                  tileColor: Color(0xFFDBEBE7),
                  dense: false,
                ),
              ),
              if (valueOrDefault<bool>(
                      currentUserDocument?.storeOwner, false) ==
                  true)
                AuthUserStreamWidget(
                  builder: (context) => ListTile(
                    title: Text(
                      FFLocalizations.of(context).getText(
                        'e8j3dda0' /* Your Dispensary */,
                      ),
                      style: FlutterFlowTheme.of(context).subtitle2.override(
                            fontFamily: 'Poppins',
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                    tileColor: Color(0xFFB1C6C4),
                    dense: false,
                  ),
                ),
              if (valueOrDefault<bool>(
                      currentUserDocument?.storeOwner, false) ==
                  true)
                AuthUserStreamWidget(
                  builder: (context) => InkWell(
                    onTap: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => StoreStoreListProductWidget(),
                        ),
                      );
                    },
                    child: ListTile(
                      leading: Icon(
                        Icons.storefront,
                        color: FlutterFlowTheme.of(context).gray600,
                      ),
                      title: Text(
                        FFLocalizations.of(context).getText(
                          '12txw2eu' /* My Dispensaries */,
                        ),
                        style: FlutterFlowTheme.of(context).subtitle2.override(
                              fontFamily: 'Poppins',
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                            ),
                      ),
                      tileColor: Color(0xFFDBEBE7),
                      dense: false,
                    ),
                  ),
                ),
              if (valueOrDefault<bool>(
                      currentUserDocument?.storeOwner, false) ==
                  true)
                AuthUserStreamWidget(
                  builder: (context) => InkWell(
                    onTap: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OwnerMainWidget(
                            ownerRef: currentUserReference,
                          ),
                        ),
                      );
                    },
                    child: ListTile(
                      leading: Icon(
                        Icons.ballot_sharp,
                        color: FlutterFlowTheme.of(context).gray600,
                      ),
                      title: Text(
                        FFLocalizations.of(context).getText(
                          'u5yij6d1' /* Concierge */,
                        ),
                        style: FlutterFlowTheme.of(context).subtitle2.override(
                              fontFamily: 'Poppins',
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                            ),
                      ),
                      tileColor: Color(0xFFDBEBE7),
                      dense: false,
                    ),
                  ),
                ),
              if (valueOrDefault<bool>(
                      currentUserDocument?.storeOwner, false) ==
                  true)
                AuthUserStreamWidget(
                  builder: (context) => InkWell(
                    onTap: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => StoreStoreListDecorateWidget(
                            ownerRef: currentUserReference,
                          ),
                        ),
                      );
                    },
                    child: ListTile(
                      leading: Icon(
                        Icons.devices,
                        color: FlutterFlowTheme.of(context).gray600,
                      ),
                      title: Text(
                        FFLocalizations.of(context).getText(
                          'f0f5w48m' /* Store Design */,
                        ),
                        style: FlutterFlowTheme.of(context).subtitle2.override(
                              fontFamily: 'Poppins',
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                            ),
                      ),
                      tileColor: Color(0xFFDBEBE7),
                      dense: false,
                    ),
                  ),
                ),
              if (valueOrDefault<bool>(
                      currentUserDocument?.storeOwner, false) ==
                  true)
                AuthUserStreamWidget(
                  builder: (context) => InkWell(
                    onTap: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => StoreStoreListInfoWidget(
                            ownerRef: currentUserReference,
                          ),
                        ),
                      );
                    },
                    child: ListTile(
                      leading: Icon(
                        Icons.info_outline_rounded,
                        color: FlutterFlowTheme.of(context).gray600,
                      ),
                      title: Text(
                        FFLocalizations.of(context).getText(
                          'j1vzl13r' /* Store info */,
                        ),
                        style: FlutterFlowTheme.of(context).subtitle2.override(
                              fontFamily: 'Poppins',
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                            ),
                      ),
                      tileColor: Color(0xFFDBEBE7),
                      dense: false,
                    ),
                  ),
                ),
              if (valueOrDefault<bool>(
                      currentUserDocument?.storeOwner, false) ==
                  true)
                AuthUserStreamWidget(
                  builder: (context) => InkWell(
                    onTap: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => StoreStoreListProductWidget(
                            ownerRef: currentUserReference,
                          ),
                        ),
                      );
                    },
                    child: ListTile(
                      leading: Icon(
                        Icons.shopping_cart_sharp,
                        color: FlutterFlowTheme.of(context).gray600,
                      ),
                      title: Text(
                        FFLocalizations.of(context).getText(
                          'ut3a7p6v' /* products */,
                        ),
                        style: FlutterFlowTheme.of(context).subtitle2.override(
                              fontFamily: 'Poppins',
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                            ),
                      ),
                      tileColor: Color(0xFFDBEBE7),
                      dense: false,
                    ),
                  ),
                ),
              if (valueOrDefault<bool>(
                      currentUserDocument?.storeOwner, false) ==
                  true)
                AuthUserStreamWidget(
                  builder: (context) => InkWell(
                    onTap: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => StoreStoreListCouponWidget(
                            ownerRef: currentUserReference,
                          ),
                        ),
                      );
                    },
                    child: ListTile(
                      leading: Icon(
                        Icons.card_membership_rounded,
                        color: FlutterFlowTheme.of(context).gray600,
                      ),
                      title: Text(
                        FFLocalizations.of(context).getText(
                          'l2nlfekp' /* Coupons */,
                        ),
                        style: FlutterFlowTheme.of(context).subtitle2.override(
                              fontFamily: 'Poppins',
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                            ),
                      ),
                      tileColor: Color(0xFFDBEBE7),
                      dense: false,
                    ),
                  ),
                ),
              if (valueOrDefault<bool>(
                      currentUserDocument?.storeOwner, false) ==
                  true)
                AuthUserStreamWidget(
                  builder: (context) => ListTile(
                    leading: Icon(
                      Icons.message_rounded,
                      color: FlutterFlowTheme.of(context).gray600,
                    ),
                    title: Text(
                      FFLocalizations.of(context).getText(
                        'q3l5pc7s' /* Messages */,
                      ),
                      style: FlutterFlowTheme.of(context).subtitle2.override(
                            fontFamily: 'Poppins',
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                          ),
                    ),
                    tileColor: Color(0xFFDBEBE7),
                    dense: false,
                  ),
                ),
              if (valueOrDefault<bool>(
                      currentUserDocument?.storeOwner, false) ==
                  true)
                AuthUserStreamWidget(
                  builder: (context) => ListTile(
                    leading: Icon(
                      Icons.insert_chart_outlined,
                      color: FlutterFlowTheme.of(context).gray600,
                    ),
                    title: Text(
                      FFLocalizations.of(context).getText(
                        'xhayafk1' /* Statistics */,
                      ),
                      style: FlutterFlowTheme.of(context).subtitle2.override(
                            fontFamily: 'Poppins',
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                          ),
                    ),
                    tileColor: Color(0xFFDBEBE7),
                    dense: false,
                  ),
                ),
            ],
          ),
        ),
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Container(
                height: 500,
                child: Stack(
                  alignment: AlignmentDirectional(0, -1),
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0, -2.1),
                      child: Image.asset(
                        'assets/images/image_66.png',
                        width: double.infinity,
                        height: 500,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 500,
                      decoration: BoxDecoration(
                        color: Color(0x8D090F13),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: Image.asset(
                            'assets/images/bangkok-bg.png',
                          ).image,
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  15, 30, 15, 15),
                              child: Container(
                                width: 390,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  border: Border.all(
                                    color: Colors.transparent,
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          scaffoldKey.currentState!
                                              .openDrawer();
                                        },
                                        text:
                                            FFLocalizations.of(context).getText(
                                          'mxzhdgel' /* Button */,
                                        ),
                                        icon: Icon(
                                          Icons.menu_sharp,
                                          size: 15,
                                        ),
                                        options: FFButtonOptions(
                                          width: 40,
                                          height: 40,
                                          color: Color(0x004B39EF),
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .subtitle2
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    color: Colors.white,
                                                  ),
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                      ),
                                    ),
                                    if (valueOrDefault<bool>(
                                            currentUserDocument?.manager,
                                            false) ==
                                        true)
                                      AuthUserStreamWidget(
                                        builder: (context) => FFButtonWidget(
                                          onPressed: () async {
                                            await Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    QRscanforShopWidget(
                                                  userRef: currentUserReference,
                                                ),
                                              ),
                                            );
                                          },
                                          text: FFLocalizations.of(context)
                                              .getText(
                                            'becwtwe1' /* MANAGER */,
                                          ),
                                          options: FFButtonOptions(
                                            width: 130,
                                            height: 40,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryColor,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .subtitle2
                                                    .override(
                                                      fontFamily: 'Poppins',
                                                      color: Colors.white,
                                                    ),
                                            borderSide: BorderSide(
                                              color: Colors.transparent,
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                        ),
                                      ),
                                    StreamBuilder<List<NotificationRecord>>(
                                      stream: queryNotificationRecord(
                                        queryBuilder: (notificationRecord) =>
                                            notificationRecord.where(
                                                'recipient',
                                                arrayContains:
                                                    currentUserReference),
                                      ),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50,
                                              height: 50,
                                              child: SpinKitRipple(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryColor,
                                                size: 50,
                                              ),
                                            ),
                                          );
                                        }
                                        List<NotificationRecord>
                                            badgeNotificationRecordList =
                                            snapshot.data!;
                                        return Badge(
                                          badgeContent: Text(
                                            badgeNotificationRecordList.length
                                                .toString(),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: Colors.white,
                                                  fontSize: 9,
                                                ),
                                          ),
                                          showBadge: true,
                                          shape: BadgeShape.circle,
                                          badgeColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryColor,
                                          elevation: 4,
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8, 8, 8, 8),
                                          position: BadgePosition.topEnd(),
                                          animationType:
                                              BadgeAnimationType.scale,
                                          toAnimate: true,
                                          child: FlutterFlowIconButton(
                                            borderColor: Colors.transparent,
                                            borderRadius: 30,
                                            borderWidth: 1,
                                            buttonSize: 50,
                                            icon: Icon(
                                              Icons.notifications,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBtnText,
                                              size: 30,
                                            ),
                                            onPressed: () async {
                                              await Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      NotificationCenterWidget(
                                                    userRef:
                                                        currentUserReference,
                                                  ),
                                                ),
                                              );
                                            },
                                          ),
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(16, 30, 16, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 10, 0),
                                      child: TextFormField(
                                        controller: textController,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyText2,
                                          hintText: FFLocalizations.of(context)
                                              .getText(
                                            'ztbv2f7q' /* Search stores, locations and m... */,
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(16),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(16),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(16),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(16),
                                          ),
                                          filled: true,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .grayIcon,
                                          prefixIcon: Icon(
                                            Icons.search,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            size: 16,
                                          ),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                      ),
                                    ),
                                  ),
                                  Stack(
                                    children: [
                                      FFButtonWidget(
                                        onPressed: () async {
                                          await Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  SearchStoreWidget(
                                                searchKeyword:
                                                    textController!.text,
                                              ),
                                            ),
                                          );
                                        },
                                        text:
                                            FFLocalizations.of(context).getText(
                                          '5kz15kj3' /* Search */,
                                        ),
                                        options: FFButtonOptions(
                                          width: 80,
                                          height: 40,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .bodyText2
                                              .override(
                                                fontFamily: 'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .white,
                                              ),
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  15, 15, 15, 15),
                              child: AuthUserStreamWidget(
                                builder: (context) => GradientText(
                                  'Hello. ${currentUserDisplayName}',
                                  style: FlutterFlowTheme.of(context)
                                      .subtitle1
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                      ),
                                  colors: [
                                    Color(0xFF23146C),
                                    FlutterFlowTheme.of(context).secondaryColor
                                  ],
                                  gradientDirection: GradientDirection.ltr,
                                  gradientType: GradientType.linear,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16, 64, 16, 24),
                              child: GradientText(
                                FFLocalizations.of(context).getText(
                                  'gsug8byb' /* Explore XOTIC places  */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .title1
                                    .override(
                                      fontFamily: 'Montserrat',
                                      color:
                                          FlutterFlowTheme.of(context).grayIcon,
                                    ),
                                colors: [
                                  FlutterFlowTheme.of(context).tertiary400,
                                  Color(0xFF38B1E5)
                                ],
                                gradientDirection: GradientDirection.ltr,
                                gradientType: GradientType.linear,
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 32, 0, 100),
                              child: Container(
                                width: double.infinity,
                                height: 600,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(0),
                                    bottomRight: Radius.circular(0),
                                    topLeft: Radius.circular(16),
                                    topRight: Radius.circular(16),
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 8, 0, 16),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Divider(
                                          height: 8,
                                          thickness: 4,
                                          indent: 140,
                                          endIndent: 140,
                                          color: FlutterFlowTheme.of(context)
                                              .lineColor,
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16, 16, 16, 0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'a4ctqfuf' /* Stores */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .title2,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16, 4, 16, 0),
                                          child:
                                              StreamBuilder<List<CitiesRecord>>(
                                            stream: queryCitiesRecord(
                                              queryBuilder: (citiesRecord) =>
                                                  citiesRecord.where('exposure',
                                                      isEqualTo: true),
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50,
                                                    height: 50,
                                                    child: SpinKitRipple(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryColor,
                                                      size: 50,
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<CitiesRecord>
                                                  textCitiesRecordList =
                                                  snapshot.data!;
                                              return Text(
                                                '${textCitiesRecordList.length.toString()} cities nationi wide',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText2,
                                              );
                                            },
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 12, 0, 0),
                                          child: Container(
                                            width: double.infinity,
                                            height: 200,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                            ),
                                            child: StreamBuilder<
                                                List<CitiesRecord>>(
                                              stream: queryCitiesRecord(
                                                queryBuilder: (citiesRecord) =>
                                                    citiesRecord.orderBy(
                                                        'Exposure_Order'),
                                              ),
                                              builder: (context, snapshot) {
                                                // Customize what your widget looks like when it's loading.
                                                if (!snapshot.hasData) {
                                                  return Center(
                                                    child: SizedBox(
                                                      width: 50,
                                                      height: 50,
                                                      child: SpinKitRipple(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryColor,
                                                        size: 50,
                                                      ),
                                                    ),
                                                  );
                                                }
                                                List<CitiesRecord>
                                                    horizontalListCitiesRecordList =
                                                    snapshot.data!;
                                                return ListView.builder(
                                                  padding: EdgeInsets.zero,
                                                  primary: false,
                                                  shrinkWrap: true,
                                                  scrollDirection:
                                                      Axis.horizontal,
                                                  itemCount:
                                                      horizontalListCitiesRecordList
                                                          .length,
                                                  itemBuilder: (context,
                                                      horizontalListIndex) {
                                                    final horizontalListCitiesRecord =
                                                        horizontalListCitiesRecordList[
                                                            horizontalListIndex];
                                                    return Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16, 8, 0, 8),
                                                      child: InkWell(
                                                        onTap: () async {
                                                          await Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                              builder: (context) =>
                                                                  SuburbListWidget(
                                                                cityRef:
                                                                    horizontalListCitiesRecord
                                                                        .reference,
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                        child: Container(
                                                          width: 180,
                                                          height: 100,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            boxShadow: [
                                                              BoxShadow(
                                                                blurRadius: 8,
                                                                color: Color(
                                                                    0x230F1113),
                                                                offset: Offset(
                                                                    0, 4),
                                                              )
                                                            ],
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12),
                                                          ),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .only(
                                                                      bottomLeft:
                                                                          Radius.circular(
                                                                              0),
                                                                      bottomRight:
                                                                          Radius.circular(
                                                                              0),
                                                                      topLeft: Radius
                                                                          .circular(
                                                                              15),
                                                                      topRight:
                                                                          Radius.circular(
                                                                              15),
                                                                    ),
                                                                    child: Image
                                                                        .network(
                                                                      horizontalListCitiesRecord
                                                                          .photoMain!,
                                                                      width:
                                                                          180,
                                                                      height:
                                                                          120,
                                                                      fit: BoxFit
                                                                          .cover,
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            16,
                                                                            12,
                                                                            16,
                                                                            12),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Text(
                                                                              horizontalListCitiesRecord.nameCity!,
                                                                              style: FlutterFlowTheme.of(context).subtitle1,
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                );
                                              },
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16, 16, 16, 0),
                                          child: InkWell(
                                            onTap: () async {
                                              await Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      SearchStoreWidget(),
                                                ),
                                              );
                                            },
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'nt6c7wmv' /* Rooftop Bars */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .title2,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16, 4, 16, 0),
                                          child:
                                              StreamBuilder<List<StoresRecord>>(
                                            stream: queryStoresRecord(
                                              queryBuilder: (storesRecord) =>
                                                  storesRecord.where(
                                                      'service_Category',
                                                      isEqualTo: 'Rooftop'),
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50,
                                                    height: 50,
                                                    child: SpinKitRipple(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryColor,
                                                      size: 50,
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<StoresRecord>
                                                  textStoresRecordList =
                                                  snapshot.data!;
                                              return Text(
                                                '${textStoresRecordList.length.toString()}  most popular rooftop bars',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText2,
                                              );
                                            },
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 12, 0, 0),
                                          child: Container(
                                            width: double.infinity,
                                            height: 220,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                            ),
                                            child: StreamBuilder<
                                                List<StoresRecord>>(
                                              stream: queryStoresRecord(
                                                queryBuilder: (storesRecord) =>
                                                    storesRecord.where(
                                                        'service_Category',
                                                        isEqualTo: 'Rooftop'),
                                              ),
                                              builder: (context, snapshot) {
                                                // Customize what your widget looks like when it's loading.
                                                if (!snapshot.hasData) {
                                                  return Center(
                                                    child: SizedBox(
                                                      width: 50,
                                                      height: 50,
                                                      child: SpinKitRipple(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryColor,
                                                        size: 50,
                                                      ),
                                                    ),
                                                  );
                                                }
                                                List<StoresRecord>
                                                    horizontalListStoresRecordList =
                                                    snapshot.data!;
                                                return ListView.builder(
                                                  padding: EdgeInsets.zero,
                                                  primary: false,
                                                  shrinkWrap: true,
                                                  scrollDirection:
                                                      Axis.horizontal,
                                                  itemCount:
                                                      horizontalListStoresRecordList
                                                          .length,
                                                  itemBuilder: (context,
                                                      horizontalListIndex) {
                                                    final horizontalListStoresRecord =
                                                        horizontalListStoresRecordList[
                                                            horizontalListIndex];
                                                    return Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16, 8, 0, 8),
                                                      child: InkWell(
                                                        onTap: () async {
                                                          await Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                              builder: (context) =>
                                                                  StoreDetailViewWidget(
                                                                storeRef:
                                                                    horizontalListStoresRecord,
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                        child: Container(
                                                          width: 240,
                                                          height: 100,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            boxShadow: [
                                                              BoxShadow(
                                                                blurRadius: 8,
                                                                color: Color(
                                                                    0x230F1113),
                                                                offset: Offset(
                                                                    0, 4),
                                                              )
                                                            ],
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12),
                                                          ),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .only(
                                                                      bottomLeft:
                                                                          Radius.circular(
                                                                              0),
                                                                      bottomRight:
                                                                          Radius.circular(
                                                                              0),
                                                                      topLeft: Radius
                                                                          .circular(
                                                                              15),
                                                                      topRight:
                                                                          Radius.circular(
                                                                              15),
                                                                    ),
                                                                    child: Image
                                                                        .network(
                                                                      horizontalListStoresRecord
                                                                          .mainPhoto!,
                                                                      width:
                                                                          240,
                                                                      height:
                                                                          120,
                                                                      fit: BoxFit
                                                                          .cover,
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            4,
                                                                            12,
                                                                            4,
                                                                            12),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Text(
                                                                              '${horizontalListStoresRecord.nameCity} | ${horizontalListStoresRecord.suburb}',
                                                                              style: FlutterFlowTheme.of(context).subtitle2,
                                                                            ),
                                                                            Text(
                                                                              horizontalListStoresRecord.nameStore!.maybeHandleOverflow(maxChars: 18),
                                                                              maxLines: 2,
                                                                              style: FlutterFlowTheme.of(context).subtitle1,
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                );
                                              },
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16, 16, 16, 0),
                                          child: InkWell(
                                            onTap: () async {
                                              await Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      SearchStoreWidget(),
                                                ),
                                              );
                                            },
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '8oaitfdz' /* Spa & Massages */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .title2,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16, 4, 16, 0),
                                          child:
                                              StreamBuilder<List<StoresRecord>>(
                                            stream: queryStoresRecord(
                                              queryBuilder: (storesRecord) =>
                                                  storesRecord.where(
                                                      'service_Category',
                                                      isEqualTo: 'Massage'),
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50,
                                                    height: 50,
                                                    child: SpinKitRipple(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryColor,
                                                      size: 50,
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<StoresRecord>
                                                  textStoresRecordList =
                                                  snapshot.data!;
                                              return Text(
                                                '${textStoresRecordList.length.toString()} most popular spa & massage ',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText2,
                                              );
                                            },
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 12, 0, 0),
                                          child: Container(
                                            width: double.infinity,
                                            height: 220,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                            ),
                                            child: StreamBuilder<
                                                List<StoresRecord>>(
                                              stream: queryStoresRecord(
                                                queryBuilder: (storesRecord) =>
                                                    storesRecord.where(
                                                        'service_Category',
                                                        isEqualTo: 'Massage'),
                                              ),
                                              builder: (context, snapshot) {
                                                // Customize what your widget looks like when it's loading.
                                                if (!snapshot.hasData) {
                                                  return Center(
                                                    child: SizedBox(
                                                      width: 50,
                                                      height: 50,
                                                      child: SpinKitRipple(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryColor,
                                                        size: 50,
                                                      ),
                                                    ),
                                                  );
                                                }
                                                List<StoresRecord>
                                                    horizontalListStoresRecordList =
                                                    snapshot.data!;
                                                return ListView.builder(
                                                  padding: EdgeInsets.zero,
                                                  primary: false,
                                                  shrinkWrap: true,
                                                  scrollDirection:
                                                      Axis.horizontal,
                                                  itemCount:
                                                      horizontalListStoresRecordList
                                                          .length,
                                                  itemBuilder: (context,
                                                      horizontalListIndex) {
                                                    final horizontalListStoresRecord =
                                                        horizontalListStoresRecordList[
                                                            horizontalListIndex];
                                                    return Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16, 8, 0, 8),
                                                      child: InkWell(
                                                        onTap: () async {
                                                          await Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                              builder: (context) =>
                                                                  StoreDetailViewWidget(
                                                                storeRef:
                                                                    horizontalListStoresRecord,
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                        child: Container(
                                                          width: 240,
                                                          height: 100,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            boxShadow: [
                                                              BoxShadow(
                                                                blurRadius: 8,
                                                                color: Color(
                                                                    0x230F1113),
                                                                offset: Offset(
                                                                    0, 4),
                                                              )
                                                            ],
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12),
                                                          ),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .only(
                                                                      bottomLeft:
                                                                          Radius.circular(
                                                                              0),
                                                                      bottomRight:
                                                                          Radius.circular(
                                                                              0),
                                                                      topLeft: Radius
                                                                          .circular(
                                                                              15),
                                                                      topRight:
                                                                          Radius.circular(
                                                                              15),
                                                                    ),
                                                                    child: Image
                                                                        .network(
                                                                      horizontalListStoresRecord
                                                                          .mainPhoto!,
                                                                      width:
                                                                          240,
                                                                      height:
                                                                          120,
                                                                      fit: BoxFit
                                                                          .cover,
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            4,
                                                                            12,
                                                                            4,
                                                                            12),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Text(
                                                                              '${horizontalListStoresRecord.nameCity} | ${horizontalListStoresRecord.suburb}',
                                                                              style: FlutterFlowTheme.of(context).subtitle2,
                                                                            ),
                                                                            Text(
                                                                              horizontalListStoresRecord.nameStore!,
                                                                              style: FlutterFlowTheme.of(context).subtitle1,
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                );
                                              },
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16, 16, 16, 0),
                                          child: InkWell(
                                            onTap: () async {
                                              await Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      SearchStoreWidget(),
                                                ),
                                              );
                                            },
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'r5w5glek' /* Clubs */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .title2,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16, 4, 16, 0),
                                          child:
                                              StreamBuilder<List<StoresRecord>>(
                                            stream: queryStoresRecord(
                                              queryBuilder: (storesRecord) =>
                                                  storesRecord.where(
                                                      'service_Category',
                                                      isEqualTo: 'Club'),
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50,
                                                    height: 50,
                                                    child: SpinKitRipple(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryColor,
                                                      size: 50,
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<StoresRecord>
                                                  textStoresRecordList =
                                                  snapshot.data!;
                                              return Text(
                                                '${textStoresRecordList.length.toString()} most popular clubs',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText2,
                                              );
                                            },
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 12, 0, 0),
                                          child: Container(
                                            width: double.infinity,
                                            height: 220,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                            ),
                                            child: StreamBuilder<
                                                List<StoresRecord>>(
                                              stream: queryStoresRecord(
                                                queryBuilder: (storesRecord) =>
                                                    storesRecord.where(
                                                        'service_Category',
                                                        isEqualTo: 'Club'),
                                              ),
                                              builder: (context, snapshot) {
                                                // Customize what your widget looks like when it's loading.
                                                if (!snapshot.hasData) {
                                                  return Center(
                                                    child: SizedBox(
                                                      width: 50,
                                                      height: 50,
                                                      child: SpinKitRipple(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryColor,
                                                        size: 50,
                                                      ),
                                                    ),
                                                  );
                                                }
                                                List<StoresRecord>
                                                    horizontalListStoresRecordList =
                                                    snapshot.data!;
                                                return ListView.builder(
                                                  padding: EdgeInsets.zero,
                                                  primary: false,
                                                  shrinkWrap: true,
                                                  scrollDirection:
                                                      Axis.horizontal,
                                                  itemCount:
                                                      horizontalListStoresRecordList
                                                          .length,
                                                  itemBuilder: (context,
                                                      horizontalListIndex) {
                                                    final horizontalListStoresRecord =
                                                        horizontalListStoresRecordList[
                                                            horizontalListIndex];
                                                    return Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16, 8, 0, 8),
                                                      child: InkWell(
                                                        onTap: () async {
                                                          await Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                              builder: (context) =>
                                                                  StoreDetailViewWidget(
                                                                storeRef:
                                                                    horizontalListStoresRecord,
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                        child: Container(
                                                          width: 240,
                                                          height: 100,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            boxShadow: [
                                                              BoxShadow(
                                                                blurRadius: 8,
                                                                color: Color(
                                                                    0x230F1113),
                                                                offset: Offset(
                                                                    0, 4),
                                                              )
                                                            ],
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12),
                                                          ),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .only(
                                                                      bottomLeft:
                                                                          Radius.circular(
                                                                              0),
                                                                      bottomRight:
                                                                          Radius.circular(
                                                                              0),
                                                                      topLeft: Radius
                                                                          .circular(
                                                                              15),
                                                                      topRight:
                                                                          Radius.circular(
                                                                              15),
                                                                    ),
                                                                    child: Image
                                                                        .network(
                                                                      horizontalListStoresRecord
                                                                          .mainPhoto!,
                                                                      width:
                                                                          240,
                                                                      height:
                                                                          120,
                                                                      fit: BoxFit
                                                                          .cover,
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            4,
                                                                            12,
                                                                            4,
                                                                            12),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Text(
                                                                              '${horizontalListStoresRecord.nameCity} | ${horizontalListStoresRecord.suburb}',
                                                                              style: FlutterFlowTheme.of(context).subtitle2,
                                                                            ),
                                                                            Text(
                                                                              horizontalListStoresRecord.nameStore!,
                                                                              style: FlutterFlowTheme.of(context).subtitle1,
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                );
                                              },
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16, 16, 16, 0),
                                          child: InkWell(
                                            onTap: () async {
                                              await Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      SearchStoreWidget(),
                                                ),
                                              );
                                            },
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'jg60ibpj' /* Fine Dining */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .title2,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16, 4, 16, 0),
                                          child:
                                              StreamBuilder<List<StoresRecord>>(
                                            stream: queryStoresRecord(
                                              queryBuilder: (storesRecord) =>
                                                  storesRecord.where(
                                                      'service_Category',
                                                      isEqualTo: 'Restaurant'),
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50,
                                                    height: 50,
                                                    child: SpinKitRipple(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryColor,
                                                      size: 50,
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<StoresRecord>
                                                  textStoresRecordList =
                                                  snapshot.data!;
                                              return Text(
                                                '${textStoresRecordList.length.toString()} most popular fine dining restaurants',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText2,
                                              );
                                            },
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 12, 0, 0),
                                          child: Container(
                                            width: double.infinity,
                                            height: 220,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                            ),
                                            child: StreamBuilder<
                                                List<StoresRecord>>(
                                              stream: queryStoresRecord(
                                                queryBuilder: (storesRecord) =>
                                                    storesRecord.where(
                                                        'service_Category',
                                                        isEqualTo:
                                                            'Restaurant'),
                                              ),
                                              builder: (context, snapshot) {
                                                // Customize what your widget looks like when it's loading.
                                                if (!snapshot.hasData) {
                                                  return Center(
                                                    child: SizedBox(
                                                      width: 50,
                                                      height: 50,
                                                      child: SpinKitRipple(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryColor,
                                                        size: 50,
                                                      ),
                                                    ),
                                                  );
                                                }
                                                List<StoresRecord>
                                                    horizontalListStoresRecordList =
                                                    snapshot.data!;
                                                return ListView.builder(
                                                  padding: EdgeInsets.zero,
                                                  primary: false,
                                                  shrinkWrap: true,
                                                  scrollDirection:
                                                      Axis.horizontal,
                                                  itemCount:
                                                      horizontalListStoresRecordList
                                                          .length,
                                                  itemBuilder: (context,
                                                      horizontalListIndex) {
                                                    final horizontalListStoresRecord =
                                                        horizontalListStoresRecordList[
                                                            horizontalListIndex];
                                                    return Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16, 8, 0, 8),
                                                      child: InkWell(
                                                        onTap: () async {
                                                          await Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                              builder: (context) =>
                                                                  StoreDetailViewWidget(
                                                                storeRef:
                                                                    horizontalListStoresRecord,
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                        child: Container(
                                                          width: 200,
                                                          height: 100,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            boxShadow: [
                                                              BoxShadow(
                                                                blurRadius: 8,
                                                                color: Color(
                                                                    0x230F1113),
                                                                offset: Offset(
                                                                    0, 4),
                                                              )
                                                            ],
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12),
                                                          ),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .only(
                                                                      bottomLeft:
                                                                          Radius.circular(
                                                                              0),
                                                                      bottomRight:
                                                                          Radius.circular(
                                                                              0),
                                                                      topLeft: Radius
                                                                          .circular(
                                                                              15),
                                                                      topRight:
                                                                          Radius.circular(
                                                                              15),
                                                                    ),
                                                                    child: Image
                                                                        .network(
                                                                      horizontalListStoresRecord
                                                                          .mainPhoto!,
                                                                      width:
                                                                          200,
                                                                      height:
                                                                          120,
                                                                      fit: BoxFit
                                                                          .cover,
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            4,
                                                                            12,
                                                                            4,
                                                                            12),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Text(
                                                                              '${horizontalListStoresRecord.nameCity} | ${horizontalListStoresRecord.suburb}',
                                                                              style: FlutterFlowTheme.of(context).subtitle2,
                                                                            ),
                                                                            Text(
                                                                              horizontalListStoresRecord.nameStore!,
                                                                              style: FlutterFlowTheme.of(context).subtitle1,
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                );
                                              },
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16, 16, 16, 0),
                                          child: InkWell(
                                            onTap: () async {
                                              await Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      SearchStoreWidget(),
                                                ),
                                              );
                                            },
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'srt59b7f' /* Clinics */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .title2,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16, 4, 16, 0),
                                          child:
                                              StreamBuilder<List<StoresRecord>>(
                                            stream: queryStoresRecord(
                                              queryBuilder: (storesRecord) =>
                                                  storesRecord.where(
                                                      'service_Category',
                                                      isEqualTo: 'cafe'),
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50,
                                                    height: 50,
                                                    child: SpinKitRipple(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryColor,
                                                      size: 50,
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<StoresRecord>
                                                  textStoresRecordList =
                                                  snapshot.data!;
                                              return Text(
                                                '${textStoresRecordList.length.toString()} most popular cafes',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText2,
                                              );
                                            },
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 12, 0, 0),
                                          child: Container(
                                            width: double.infinity,
                                            height: 220,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                            ),
                                            child: StreamBuilder<
                                                List<StoresRecord>>(
                                              stream: queryStoresRecord(
                                                queryBuilder: (storesRecord) =>
                                                    storesRecord.where(
                                                        'service_Category',
                                                        isEqualTo: 'Cafe'),
                                              ),
                                              builder: (context, snapshot) {
                                                // Customize what your widget looks like when it's loading.
                                                if (!snapshot.hasData) {
                                                  return Center(
                                                    child: SizedBox(
                                                      width: 50,
                                                      height: 50,
                                                      child: SpinKitRipple(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryColor,
                                                        size: 50,
                                                      ),
                                                    ),
                                                  );
                                                }
                                                List<StoresRecord>
                                                    horizontalListStoresRecordList =
                                                    snapshot.data!;
                                                return ListView.builder(
                                                  padding: EdgeInsets.zero,
                                                  primary: false,
                                                  shrinkWrap: true,
                                                  scrollDirection:
                                                      Axis.horizontal,
                                                  itemCount:
                                                      horizontalListStoresRecordList
                                                          .length,
                                                  itemBuilder: (context,
                                                      horizontalListIndex) {
                                                    final horizontalListStoresRecord =
                                                        horizontalListStoresRecordList[
                                                            horizontalListIndex];
                                                    return Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16, 8, 0, 8),
                                                      child: InkWell(
                                                        onTap: () async {
                                                          await Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                              builder: (context) =>
                                                                  StoreDetailViewWidget(
                                                                storeRef:
                                                                    horizontalListStoresRecord,
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                        child: Container(
                                                          width: 200,
                                                          height: 100,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            boxShadow: [
                                                              BoxShadow(
                                                                blurRadius: 8,
                                                                color: Color(
                                                                    0x230F1113),
                                                                offset: Offset(
                                                                    0, 4),
                                                              )
                                                            ],
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12),
                                                          ),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .only(
                                                                      bottomLeft:
                                                                          Radius.circular(
                                                                              0),
                                                                      bottomRight:
                                                                          Radius.circular(
                                                                              0),
                                                                      topLeft: Radius
                                                                          .circular(
                                                                              15),
                                                                      topRight:
                                                                          Radius.circular(
                                                                              15),
                                                                    ),
                                                                    child: Image
                                                                        .network(
                                                                      horizontalListStoresRecord
                                                                          .mainPhoto!,
                                                                      width:
                                                                          200,
                                                                      height:
                                                                          120,
                                                                      fit: BoxFit
                                                                          .cover,
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            4,
                                                                            12,
                                                                            4,
                                                                            12),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Text(
                                                                              '${horizontalListStoresRecord.nameCity} | ${horizontalListStoresRecord.suburb}',
                                                                              style: FlutterFlowTheme.of(context).subtitle2,
                                                                            ),
                                                                            Text(
                                                                              horizontalListStoresRecord.nameStore!,
                                                                              style: FlutterFlowTheme.of(context).subtitle1,
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                );
                                              },
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
