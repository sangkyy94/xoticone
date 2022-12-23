import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/modal_logout_widget.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/permissions_util.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> with TickerProviderStateMixin {
  TextEditingController? textController;
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
                          child: FFButtonWidget(
                            onPressed: () async {
                              context.pushNamed('Admin_Main');
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
                        child: ClipRRect(
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
                                    child: Text(
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
                                    child: Text(
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
                                    child: Text(
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
                  context.pushNamed(
                    'MyCoupon',
                    queryParams: {
                      'userRef': serializeParam(
                        currentUserReference,
                        ParamType.DocumentReference,
                      ),
                    }.withoutNulls,
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
                  context.pushNamed(
                    'My_Referee_List',
                    queryParams: {
                      'userRef': serializeParam(
                        currentUserReference,
                        ParamType.DocumentReference,
                      ),
                    }.withoutNulls,
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
                  context.pushNamed(
                    'My_Peers',
                    queryParams: {
                      'userRef': serializeParam(
                        currentUserReference,
                        ParamType.DocumentReference,
                      ),
                    }.withoutNulls,
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
                  context.pushNamed(
                    'MyProfile',
                    queryParams: {
                      'userRef': serializeParam(
                        currentUserReference,
                        ParamType.DocumentReference,
                      ),
                    }.withoutNulls,
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
                      context.pushNamed('My_Favorites');
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
                  context.pushNamed(
                    'RewardCenter',
                    queryParams: {
                      'userRef': serializeParam(
                        currentUserReference,
                        ParamType.DocumentReference,
                      ),
                    }.withoutNulls,
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
                  context.pushNamed('Notice');
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
                  context.pushNamed(
                    'CS_Center_ForCustomer',
                    queryParams: {
                      'userRef': serializeParam(
                        currentUserReference,
                        ParamType.DocumentReference,
                      ),
                    }.withoutNulls,
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
                  context.pushNamed('Setting');
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
                  child: ListTile(
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
                  child: InkWell(
                    onTap: () async {
                      context.pushNamed('Store_StoreList_Product');
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
              if (valueOrDefault<bool>(
                      currentUserDocument?.storeOwner, false) ==
                  true)
                AuthUserStreamWidget(
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
              if (valueOrDefault<bool>(
                      currentUserDocument?.storeOwner, false) ==
                  true)
                AuthUserStreamWidget(
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
              if (valueOrDefault<bool>(
                      currentUserDocument?.storeOwner, false) ==
                  true)
                AuthUserStreamWidget(
                  child: InkWell(
                    onTap: () async {
                      context.pushNamed(
                        'Store_StoreList_Product',
                        queryParams: {
                          'ownerRef': serializeParam(
                            currentUserReference,
                            ParamType.DocumentReference,
                          ),
                        }.withoutNulls,
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
                  child: InkWell(
                    onTap: () async {
                      context.pushNamed(
                        'Store_StoreList_Coupon',
                        queryParams: {
                          'ownerRef': serializeParam(
                            currentUserReference,
                            ParamType.DocumentReference,
                          ),
                        }.withoutNulls,
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
                  child: ListTile(
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
                  child: ListTile(
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
        onTap: () => FocusScope.of(context).unfocus(),
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
                      alignment: AlignmentDirectional(0.05, -1),
                      child: Image.network(
                        'https://images.unsplash.com/photo-1516483638261-f4dbaf036963?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1286&q=80',
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
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            context.pushNamed(
                                              'QRscanforShop',
                                              queryParams: {
                                                'userRef': serializeParam(
                                                  currentUserReference,
                                                  ParamType.DocumentReference,
                                                ),
                                              }.withoutNulls,
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
                                    Badge(
                                      badgeContent: Text(
                                        FFLocalizations.of(context).getText(
                                          'seykqker' /* 1 */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Colors.white,
                                            ),
                                      ),
                                      showBadge: true,
                                      shape: BadgeShape.circle,
                                      badgeColor: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      elevation: 4,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 8, 8, 8),
                                      position: BadgePosition.topEnd(),
                                      animationType: BadgeAnimationType.scale,
                                      toAnimate: true,
                                      child: FlutterFlowIconButton(
                                        borderColor: Colors.transparent,
                                        borderRadius: 30,
                                        borderWidth: 1,
                                        buttonSize: 60,
                                        icon: Icon(
                                          Icons.notifications,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBtnText,
                                          size: 30,
                                        ),
                                        onPressed: () async {
                                          context.pushNamed(
                                            'NotificationCenter',
                                            queryParams: {
                                              'userRef': serializeParam(
                                                currentUserReference,
                                                ParamType.DocumentReference,
                                              ),
                                            }.withoutNulls,
                                          );
                                        },
                                      ),
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
                                          context.pushNamed(
                                            'SearchStore',
                                            queryParams: {
                                              'searchKeyword': serializeParam(
                                                textController!.text,
                                                ParamType.String,
                                              ),
                                            }.withoutNulls,
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
                                child: Text(
                                  'Hello. ${currentUserDisplayName}',
                                  style: FlutterFlowTheme.of(context)
                                      .subtitle1
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                      ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16, 64, 16, 24),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'gsug8byb' /* Explore the best dispensaries ... */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .title1
                                    .override(
                                      fontFamily: 'Montserrat',
                                      color:
                                          FlutterFlowTheme.of(context).grayIcon,
                                    ),
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
                                              'a4ctqfuf' /* Experience top destinations */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .title2,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16, 4, 16, 0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'wgtsl3ph' /* 9 cities nationi wide */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText2,
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
                                                          context.pushNamed(
                                                            'SuburbList',
                                                            queryParams: {
                                                              'cityRef':
                                                                  serializeParam(
                                                                horizontalListCitiesRecord
                                                                    .reference,
                                                                ParamType
                                                                    .DocumentReference,
                                                              ),
                                                            }.withoutNulls,
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
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [],
                                                                              ),
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
                                              context.pushNamed('SearchStore');
                                            },
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'nt6c7wmv' /* Suburbs */,
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
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'hvdcqxa2' /* 10 most popular dispensaries */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText2,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 0, 0, 2),
                                          child: StreamBuilder<
                                              List<SuburbsRecord>>(
                                            stream: querySuburbsRecord(),
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
                                              List<SuburbsRecord>
                                                  verticalListSuburbsRecordList =
                                                  snapshot.data!;
                                              return ListView.builder(
                                                padding: EdgeInsets.zero,
                                                primary: false,
                                                shrinkWrap: true,
                                                scrollDirection: Axis.vertical,
                                                itemCount:
                                                    verticalListSuburbsRecordList
                                                        .length,
                                                itemBuilder: (context,
                                                    verticalListIndex) {
                                                  final verticalListSuburbsRecord =
                                                      verticalListSuburbsRecordList[
                                                          verticalListIndex];
                                                  return Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                16, 8, 16, 8),
                                                    child: InkWell(
                                                      onTap: () async {
                                                        context.pushNamed(
                                                          'StoreListView',
                                                          queryParams: {
                                                            'suburbRef':
                                                                serializeParam(
                                                              verticalListSuburbsRecord
                                                                  .reference,
                                                              ParamType
                                                                  .DocumentReference,
                                                            ),
                                                          }.withoutNulls,
                                                        );
                                                      },
                                                      child: Container(
                                                        width: 270,
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
                                                              offset:
                                                                  Offset(0, 4),
                                                            )
                                                          ],
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(12),
                                                        ),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Hero(
                                                              tag:
                                                                  verticalListSuburbsRecord
                                                                      .photo1!,
                                                              transitionOnUserGestures:
                                                                  true,
                                                              child: ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .only(
                                                                  bottomLeft: Radius
                                                                      .circular(
                                                                          0),
                                                                  bottomRight: Radius
                                                                      .circular(
                                                                          0),
                                                                  topLeft: Radius
                                                                      .circular(
                                                                          12),
                                                                  topRight: Radius
                                                                      .circular(
                                                                          12),
                                                                ),
                                                                child: Image
                                                                    .network(
                                                                  verticalListSuburbsRecord
                                                                      .photo1!,
                                                                  width: double
                                                                      .infinity,
                                                                  height: 200,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
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
                                                                        MainAxisSize
                                                                            .max,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Text(
                                                                            '${verticalListSuburbsRecord.suburrbName}  :   ',
                                                                            style:
                                                                                FlutterFlowTheme.of(context).subtitle1,
                                                                          ),
                                                                          StreamBuilder<
                                                                              List<StoresRecord>>(
                                                                            stream:
                                                                                queryStoresRecord(
                                                                              queryBuilder: (storesRecord) => storesRecord.where('suburb', isEqualTo: verticalListSuburbsRecord.suburrbName),
                                                                            ),
                                                                            builder:
                                                                                (context, snapshot) {
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
                                                                              List<StoresRecord> textStoresRecordList = snapshot.data!;
                                                                              return Text(
                                                                                '${textStoresRecordList.length.toString()} Stores',
                                                                                style: FlutterFlowTheme.of(context).subtitle1,
                                                                              );
                                                                            },
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Container(
                                                                    width: 100,
                                                                    height: 32,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              12),
                                                                    ),
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            0,
                                                                            0),
                                                                    child: Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        'rkvghk51' /* Check */,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyText1
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
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
