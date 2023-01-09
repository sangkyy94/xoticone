import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../chat_page/chat_page_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../member_view/member_view_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class StoreCustomerlistWidget extends StatefulWidget {
  const StoreCustomerlistWidget({
    Key? key,
    this.storeRef,
  }) : super(key: key);

  final StoresRecord? storeRef;

  @override
  _StoreCustomerlistWidgetState createState() =>
      _StoreCustomerlistWidgetState();
}

class _StoreCustomerlistWidgetState extends State<StoreCustomerlistWidget> {
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void dispose() {
    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () async {
            Navigator.pop(context);
          },
        ),
        title: Text(
          FFLocalizations.of(context).getText(
            'l48woufc' /* Customer List  */,
          ),
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 2,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 100,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).darkSeaGreen,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                            child: Text(
                              'STORE : ${widget.storeRef!.nameStore}',
                              style: FlutterFlowTheme.of(context)
                                  .title1
                                  .override(
                                    fontFamily: 'Montserrat',
                                    color: FlutterFlowTheme.of(context).white,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 100,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                            child: StreamBuilder<List<StampCouponsRecord>>(
                              stream: queryStampCouponsRecord(
                                queryBuilder: (stampCouponsRecord) =>
                                    stampCouponsRecord.where('Store_Ref',
                                        isEqualTo: widget.storeRef!.reference),
                              ),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50,
                                      height: 50,
                                      child: SpinKitRipple(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                        size: 50,
                                      ),
                                    ),
                                  );
                                }
                                List<StampCouponsRecord>
                                    textStampCouponsRecordList = snapshot.data!;
                                return Text(
                                  'You have ${textStampCouponsRecordList.length.toString()}customers who got the coupon.',
                                  style: FlutterFlowTheme.of(context).bodyText1,
                                );
                              },
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'rfqdiy1m' /* Please check your potenttial c... */,
                              ),
                              style: FlutterFlowTheme.of(context).bodyText1,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 600,
                      decoration: BoxDecoration(),
                      child: DefaultTabController(
                        length: 3,
                        initialIndex: 0,
                        child: Column(
                          children: [
                            TabBar(
                              labelColor:
                                  FlutterFlowTheme.of(context).primaryColor,
                              unselectedLabelColor:
                                  FlutterFlowTheme.of(context).secondaryText,
                              labelStyle:
                                  FlutterFlowTheme.of(context).subtitle1,
                              indicatorColor:
                                  FlutterFlowTheme.of(context).primaryColor,
                              tabs: [
                                Tab(
                                  text: FFLocalizations.of(context).getText(
                                    'fk44mkh0' /* Unused */,
                                  ),
                                ),
                                Tab(
                                  text: FFLocalizations.of(context).getText(
                                    '03bdq1dq' /* Used */,
                                  ),
                                ),
                                Tab(
                                  text: FFLocalizations.of(context).getText(
                                    'o6mfr8e1' /* Rewarded */,
                                  ),
                                ),
                              ],
                            ),
                            Expanded(
                              child: TabBarView(
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.95,
                                    height: 480,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                    ),
                                    child:
                                        StreamBuilder<List<StampCouponsRecord>>(
                                      stream: queryStampCouponsRecord(
                                        queryBuilder: (stampCouponsRecord) =>
                                            stampCouponsRecord
                                                .where('Store_Name',
                                                    isEqualTo: widget
                                                        .storeRef!.nameStore)
                                                .where('Stamp_Count',
                                                    isEqualTo: 0)
                                                .where('Discarded',
                                                    isNotEqualTo: true),
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
                                        List<StampCouponsRecord>
                                            listViewStampCouponsRecordList =
                                            snapshot.data!;
                                        return ListView.builder(
                                          padding: EdgeInsets.zero,
                                          scrollDirection: Axis.vertical,
                                          itemCount:
                                              listViewStampCouponsRecordList
                                                  .length,
                                          itemBuilder:
                                              (context, listViewIndex) {
                                            final listViewStampCouponsRecord =
                                                listViewStampCouponsRecordList[
                                                    listViewIndex];
                                            return Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(10, 5, 10, 5),
                                              child: Container(
                                                width: double.infinity,
                                                height: 100,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(15, 15,
                                                                  15, 15),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          StreamBuilder<
                                                              List<
                                                                  UsersRecord>>(
                                                            stream:
                                                                queryUsersRecord(
                                                              queryBuilder: (usersRecord) =>
                                                                  usersRecord.where(
                                                                      'email',
                                                                      isEqualTo:
                                                                          listViewStampCouponsRecord
                                                                              .customerId),
                                                              singleRecord:
                                                                  true,
                                                            ),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 50,
                                                                    height: 50,
                                                                    child:
                                                                        SpinKitRipple(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                      size: 50,
                                                                    ),
                                                                  ),
                                                                );
                                                              }
                                                              List<UsersRecord>
                                                                  textStockUsersRecordList =
                                                                  snapshot
                                                                      .data!;
                                                              // Return an empty Container when the item does not exist.
                                                              if (snapshot.data!
                                                                  .isEmpty) {
                                                                return Container();
                                                              }
                                                              final textStockUsersRecord =
                                                                  textStockUsersRecordList
                                                                          .isNotEmpty
                                                                      ? textStockUsersRecordList
                                                                          .first
                                                                      : null;
                                                              return InkWell(
                                                                onTap:
                                                                    () async {
                                                                  await Navigator
                                                                      .push(
                                                                    context,
                                                                    MaterialPageRoute(
                                                                      builder:
                                                                          (context) =>
                                                                              MemberViewWidget(
                                                                        userRef:
                                                                            textStockUsersRecord,
                                                                      ),
                                                                    ),
                                                                  );
                                                                },
                                                                child:
                                                                    GradientText(
                                                                  'Name : ${listViewStampCouponsRecord.customerId}',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .subtitle1,
                                                                  colors: [
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .customColor1,
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryColor
                                                                  ],
                                                                  gradientDirection:
                                                                      GradientDirection
                                                                          .ltr,
                                                                  gradientType:
                                                                      GradientType
                                                                          .linear,
                                                                ),
                                                              );
                                                            },
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Text(
                                                                'Coupon ID : ${listViewStampCouponsRecord.couponId}',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1,
                                                              ),
                                                            ],
                                                          ),
                                                          Text(
                                                            'Issued at : ${listViewStampCouponsRecord.createdAt?.toString()}',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1,
                                                          ),
                                                          Text(
                                                            '# of Stamps : ${listViewStampCouponsRecord.stampCount?.toString()}',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(15, 15,
                                                                  15, 15),
                                                      child: StreamBuilder<
                                                          List<UsersRecord>>(
                                                        stream:
                                                            queryUsersRecord(
                                                          queryBuilder: (usersRecord) =>
                                                              usersRecord.where(
                                                                  'email',
                                                                  isEqualTo:
                                                                      listViewStampCouponsRecord
                                                                          .customerId),
                                                          singleRecord: true,
                                                        ),
                                                        builder: (context,
                                                            snapshot) {
                                                          // Customize what your widget looks like when it's loading.
                                                          if (!snapshot
                                                              .hasData) {
                                                            return Center(
                                                              child: SizedBox(
                                                                width: 50,
                                                                height: 50,
                                                                child:
                                                                    SpinKitRipple(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryColor,
                                                                  size: 50,
                                                                ),
                                                              ),
                                                            );
                                                          }
                                                          List<UsersRecord>
                                                              iconUsersRecordList =
                                                              snapshot.data!;
                                                          // Return an empty Container when the item does not exist.
                                                          if (snapshot
                                                              .data!.isEmpty) {
                                                            return Container();
                                                          }
                                                          final iconUsersRecord =
                                                              iconUsersRecordList
                                                                      .isNotEmpty
                                                                  ? iconUsersRecordList
                                                                      .first
                                                                  : null;
                                                          return InkWell(
                                                            onTap: () async {
                                                              final chatsCreateData =
                                                                  {
                                                                ...createChatsRecordData(
                                                                  userA:
                                                                      currentUserReference,
                                                                  userB: iconUsersRecord!
                                                                      .reference,
                                                                ),
                                                                'users': [
                                                                  iconUsersRecord!
                                                                      .reference
                                                                ],
                                                              };
                                                              await ChatsRecord
                                                                  .collection
                                                                  .doc()
                                                                  .set(
                                                                      chatsCreateData);
                                                              await Navigator
                                                                  .push(
                                                                context,
                                                                MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          ChatPageWidget(
                                                                    chatUser:
                                                                        iconUsersRecord,
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                            child: Icon(
                                                              Icons
                                                                  .message_sharp,
                                                              color: Color(
                                                                  0xFF38B1E5),
                                                              size: 24,
                                                            ),
                                                          );
                                                        },
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.95,
                                    height: 480,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                    ),
                                    child:
                                        StreamBuilder<List<StampCouponsRecord>>(
                                      stream: queryStampCouponsRecord(
                                        queryBuilder: (stampCouponsRecord) =>
                                            stampCouponsRecord
                                                .where('Store_Name',
                                                    isEqualTo: widget
                                                        .storeRef!.nameStore)
                                                .where('Stamp_Count',
                                                    isNotEqualTo: 0),
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
                                        List<StampCouponsRecord>
                                            listViewStampCouponsRecordList =
                                            snapshot.data!;
                                        return ListView.builder(
                                          padding: EdgeInsets.zero,
                                          scrollDirection: Axis.vertical,
                                          itemCount:
                                              listViewStampCouponsRecordList
                                                  .length,
                                          itemBuilder:
                                              (context, listViewIndex) {
                                            final listViewStampCouponsRecord =
                                                listViewStampCouponsRecordList[
                                                    listViewIndex];
                                            return Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(10, 5, 10, 5),
                                              child: Container(
                                                width: double.infinity,
                                                height: 120,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(15, 15,
                                                                  15, 15),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          StreamBuilder<
                                                              List<
                                                                  UsersRecord>>(
                                                            stream:
                                                                queryUsersRecord(
                                                              queryBuilder: (usersRecord) =>
                                                                  usersRecord.where(
                                                                      'email',
                                                                      isEqualTo:
                                                                          listViewStampCouponsRecord
                                                                              .customerId),
                                                              singleRecord:
                                                                  true,
                                                            ),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 50,
                                                                    height: 50,
                                                                    child:
                                                                        SpinKitRipple(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                      size: 50,
                                                                    ),
                                                                  ),
                                                                );
                                                              }
                                                              List<UsersRecord>
                                                                  textCustomerIDUsersRecordList =
                                                                  snapshot
                                                                      .data!;
                                                              // Return an empty Container when the item does not exist.
                                                              if (snapshot.data!
                                                                  .isEmpty) {
                                                                return Container();
                                                              }
                                                              final textCustomerIDUsersRecord =
                                                                  textCustomerIDUsersRecordList
                                                                          .isNotEmpty
                                                                      ? textCustomerIDUsersRecordList
                                                                          .first
                                                                      : null;
                                                              return InkWell(
                                                                onTap:
                                                                    () async {
                                                                  await Navigator
                                                                      .push(
                                                                    context,
                                                                    MaterialPageRoute(
                                                                      builder:
                                                                          (context) =>
                                                                              MemberViewWidget(
                                                                        userRef:
                                                                            textCustomerIDUsersRecord,
                                                                      ),
                                                                    ),
                                                                  );
                                                                },
                                                                child:
                                                                    GradientText(
                                                                  'Name : ${listViewStampCouponsRecord.customerId}',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .subtitle1,
                                                                  colors: [
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .customColor1,
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryColor
                                                                  ],
                                                                  gradientDirection:
                                                                      GradientDirection
                                                                          .ltr,
                                                                  gradientType:
                                                                      GradientType
                                                                          .linear,
                                                                ),
                                                              );
                                                            },
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Text(
                                                                'Coupon ID : ${listViewStampCouponsRecord.couponId}',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1,
                                                              ),
                                                            ],
                                                          ),
                                                          Text(
                                                            'Issued at : ${listViewStampCouponsRecord.createdAt?.toString()}',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1,
                                                          ),
                                                          Text(
                                                            '# of Stamps : ${listViewStampCouponsRecord.stampCount?.toString()}',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(15, 15,
                                                                  15, 15),
                                                      child: StreamBuilder<
                                                          List<UsersRecord>>(
                                                        stream:
                                                            queryUsersRecord(
                                                          queryBuilder: (usersRecord) =>
                                                              usersRecord.where(
                                                                  'email',
                                                                  isEqualTo:
                                                                      listViewStampCouponsRecord
                                                                          .customerId),
                                                          singleRecord: true,
                                                        ),
                                                        builder: (context,
                                                            snapshot) {
                                                          // Customize what your widget looks like when it's loading.
                                                          if (!snapshot
                                                              .hasData) {
                                                            return Center(
                                                              child: SizedBox(
                                                                width: 50,
                                                                height: 50,
                                                                child:
                                                                    SpinKitRipple(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryColor,
                                                                  size: 50,
                                                                ),
                                                              ),
                                                            );
                                                          }
                                                          List<UsersRecord>
                                                              iconUsersRecordList =
                                                              snapshot.data!;
                                                          // Return an empty Container when the item does not exist.
                                                          if (snapshot
                                                              .data!.isEmpty) {
                                                            return Container();
                                                          }
                                                          final iconUsersRecord =
                                                              iconUsersRecordList
                                                                      .isNotEmpty
                                                                  ? iconUsersRecordList
                                                                      .first
                                                                  : null;
                                                          return InkWell(
                                                            onTap: () async {
                                                              final chatsCreateData =
                                                                  {
                                                                ...createChatsRecordData(
                                                                  userA:
                                                                      currentUserReference,
                                                                  userB: listViewStampCouponsRecord
                                                                      .customerRef,
                                                                ),
                                                                'users': [
                                                                  listViewStampCouponsRecord
                                                                      .customerRef
                                                                ],
                                                              };
                                                              await ChatsRecord
                                                                  .collection
                                                                  .doc()
                                                                  .set(
                                                                      chatsCreateData);
                                                              await Navigator
                                                                  .push(
                                                                context,
                                                                MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          ChatPageWidget(
                                                                    chatUser:
                                                                        iconUsersRecord,
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                            child: Icon(
                                                              Icons
                                                                  .message_sharp,
                                                              color: Color(
                                                                  0xFF38B1E5),
                                                              size: 24,
                                                            ),
                                                          );
                                                        },
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.95,
                                    height: 480,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                    ),
                                    child:
                                        StreamBuilder<List<StampCouponsRecord>>(
                                      stream: queryStampCouponsRecord(
                                        queryBuilder: (stampCouponsRecord) =>
                                            stampCouponsRecord
                                                .where('Store_Ref',
                                                    isEqualTo: widget
                                                        .storeRef!.reference)
                                                .where('Rewarded',
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
                                                    FlutterFlowTheme.of(context)
                                                        .primaryColor,
                                                size: 50,
                                              ),
                                            ),
                                          );
                                        }
                                        List<StampCouponsRecord>
                                            listViewStampCouponsRecordList =
                                            snapshot.data!;
                                        return ListView.builder(
                                          padding: EdgeInsets.zero,
                                          scrollDirection: Axis.vertical,
                                          itemCount:
                                              listViewStampCouponsRecordList
                                                  .length,
                                          itemBuilder:
                                              (context, listViewIndex) {
                                            final listViewStampCouponsRecord =
                                                listViewStampCouponsRecordList[
                                                    listViewIndex];
                                            return Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(10, 5, 10, 5),
                                              child: Container(
                                                width: double.infinity,
                                                height: 100,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(15, 15,
                                                                  15, 15),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          StreamBuilder<
                                                              List<
                                                                  UsersRecord>>(
                                                            stream:
                                                                queryUsersRecord(
                                                              queryBuilder: (usersRecord) =>
                                                                  usersRecord.where(
                                                                      'email',
                                                                      isEqualTo:
                                                                          listViewStampCouponsRecord
                                                                              .customerId),
                                                              singleRecord:
                                                                  true,
                                                            ),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 50,
                                                                    height: 50,
                                                                    child:
                                                                        SpinKitRipple(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                      size: 50,
                                                                    ),
                                                                  ),
                                                                );
                                                              }
                                                              List<UsersRecord>
                                                                  textCustomerIDUsersRecordList =
                                                                  snapshot
                                                                      .data!;
                                                              // Return an empty Container when the item does not exist.
                                                              if (snapshot.data!
                                                                  .isEmpty) {
                                                                return Container();
                                                              }
                                                              final textCustomerIDUsersRecord =
                                                                  textCustomerIDUsersRecordList
                                                                          .isNotEmpty
                                                                      ? textCustomerIDUsersRecordList
                                                                          .first
                                                                      : null;
                                                              return InkWell(
                                                                onTap:
                                                                    () async {
                                                                  await Navigator
                                                                      .push(
                                                                    context,
                                                                    MaterialPageRoute(
                                                                      builder:
                                                                          (context) =>
                                                                              MemberViewWidget(
                                                                        userRef:
                                                                            textCustomerIDUsersRecord,
                                                                      ),
                                                                    ),
                                                                  );
                                                                },
                                                                child:
                                                                    GradientText(
                                                                  'Name : ${listViewStampCouponsRecord.customerId}',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .subtitle1,
                                                                  colors: [
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .customColor1,
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryColor
                                                                  ],
                                                                  gradientDirection:
                                                                      GradientDirection
                                                                          .ltr,
                                                                  gradientType:
                                                                      GradientType
                                                                          .linear,
                                                                ),
                                                              );
                                                            },
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Text(
                                                                'Coupon ID : ${listViewStampCouponsRecord.couponId}',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1,
                                                              ),
                                                            ],
                                                          ),
                                                          Text(
                                                            'Issued at : ${listViewStampCouponsRecord.createdAt?.toString()}',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1,
                                                          ),
                                                          Text(
                                                            '# of Stamps : ${listViewStampCouponsRecord.stampCount?.toString()}',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(15, 15,
                                                                  15, 15),
                                                      child: StreamBuilder<
                                                          List<UsersRecord>>(
                                                        stream:
                                                            queryUsersRecord(
                                                          queryBuilder: (usersRecord) =>
                                                              usersRecord.where(
                                                                  'email',
                                                                  isEqualTo:
                                                                      listViewStampCouponsRecord
                                                                          .customerId),
                                                          singleRecord: true,
                                                        ),
                                                        builder: (context,
                                                            snapshot) {
                                                          // Customize what your widget looks like when it's loading.
                                                          if (!snapshot
                                                              .hasData) {
                                                            return Center(
                                                              child: SizedBox(
                                                                width: 50,
                                                                height: 50,
                                                                child:
                                                                    SpinKitRipple(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryColor,
                                                                  size: 50,
                                                                ),
                                                              ),
                                                            );
                                                          }
                                                          List<UsersRecord>
                                                              iconUsersRecordList =
                                                              snapshot.data!;
                                                          // Return an empty Container when the item does not exist.
                                                          if (snapshot
                                                              .data!.isEmpty) {
                                                            return Container();
                                                          }
                                                          final iconUsersRecord =
                                                              iconUsersRecordList
                                                                      .isNotEmpty
                                                                  ? iconUsersRecordList
                                                                      .first
                                                                  : null;
                                                          return InkWell(
                                                            onTap: () async {
                                                              final chatsCreateData =
                                                                  {
                                                                ...createChatsRecordData(
                                                                  userA:
                                                                      currentUserReference,
                                                                  userB: listViewStampCouponsRecord
                                                                      .customerRef,
                                                                ),
                                                                'users': [
                                                                  listViewStampCouponsRecord
                                                                      .customerRef
                                                                ],
                                                              };
                                                              await ChatsRecord
                                                                  .collection
                                                                  .doc()
                                                                  .set(
                                                                      chatsCreateData);
                                                              await Navigator
                                                                  .push(
                                                                context,
                                                                MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          ChatPageWidget(
                                                                    chatUser:
                                                                        iconUsersRecord,
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                            child: Icon(
                                                              Icons
                                                                  .message_sharp,
                                                              color: Color(
                                                                  0xFF38B1E5),
                                                              size: 24,
                                                            ),
                                                          );
                                                        },
                                                      ),
                                                    ),
                                                  ],
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
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
