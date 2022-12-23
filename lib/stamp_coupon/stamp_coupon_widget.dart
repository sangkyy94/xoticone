import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:barcode_widget/barcode_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class StampCouponWidget extends StatefulWidget {
  const StampCouponWidget({
    Key? key,
    this.storeRef,
    this.couponRef,
  }) : super(key: key);

  final DocumentReference? storeRef;
  final StampCouponsRecord? couponRef;

  @override
  _StampCouponWidgetState createState() => _StampCouponWidgetState();
}

class _StampCouponWidgetState extends State<StampCouponWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

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
            context.pop();
          },
        ),
        title: Text(
          FFLocalizations.of(context).getText(
            'mj7dfsob' /* STAMP COUPON */,
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
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 80,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).black600,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                      child: Text(
                        widget.couponRef!.couponName!,
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.of(context).white,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 300,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).black600,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).black600,
                      ),
                    ),
                    Container(
                      width: 200,
                      height: 250,
                      decoration: BoxDecoration(
                        color: Color(0xFF38B1E5),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                            child: BarcodeWidget(
                              data: widget.couponRef!.couponId!,
                              barcode: Barcode.qrCode(),
                              width: 150,
                              height: 150,
                              color: FlutterFlowTheme.of(context).customColor4,
                              backgroundColor: Color(0xFF38B1E5),
                              errorBuilder: (_context, _error) => SizedBox(
                                width: 150,
                                height: 150,
                              ),
                              drawText: false,
                            ),
                          ),
                          Text(
                            widget.couponRef!.couponId!,
                            style: FlutterFlowTheme.of(context)
                                .bodyText1
                                .override(
                                  fontFamily: 'Poppins',
                                  color:
                                      FlutterFlowTheme.of(context).customColor4,
                                  fontSize: 18,
                                ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).black600,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 100,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).black600,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'tr1ud79l' /* Number of Stamps : */,
                            ),
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context).white,
                                    ),
                          ),
                        ),
                        Text(
                          widget.couponRef!.stampCount!.toString(),
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context).white,
                                  ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              '6y1f3fll' /* Cutomer email : */,
                            ),
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context).white,
                                    ),
                          ),
                        ),
                        Text(
                          widget.couponRef!.customerId!,
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context).white,
                                  ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 400,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).white,
                  border: Border.all(
                    color: FlutterFlowTheme.of(context).black600,
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Stack(
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            if (widget.couponRef!.stampCount == 0)
                              Align(
                                alignment: AlignmentDirectional(-0.95, 0.01),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      40, 0, 40, 0),
                                  child: Image.asset(
                                    'assets/images/Coupon_0.png',
                                    width: MediaQuery.of(context).size.width,
                                    height: 180,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            if (widget.couponRef!.stampCount == 1)
                              Align(
                                alignment: AlignmentDirectional(-0.95, 0.01),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      40, 0, 40, 0),
                                  child: Image.asset(
                                    'assets/images/Coupon_1.png',
                                    width: MediaQuery.of(context).size.width,
                                    height: 180,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            if (widget.couponRef!.stampCount == 2)
                              Align(
                                alignment: AlignmentDirectional(-0.95, 0.01),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      40, 0, 40, 0),
                                  child: Image.asset(
                                    'assets/images/Coupon_2.png',
                                    width: MediaQuery.of(context).size.width,
                                    height: 180,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            if (widget.couponRef!.stampCount == 3)
                              Align(
                                alignment: AlignmentDirectional(-0.95, 0.01),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      40, 0, 40, 0),
                                  child: Image.asset(
                                    'assets/images/Coupon_3.png',
                                    width: MediaQuery.of(context).size.width,
                                    height: 180,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            if (widget.couponRef!.stampCount == 4)
                              Align(
                                alignment: AlignmentDirectional(-0.95, 0.01),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      40, 0, 40, 0),
                                  child: Image.asset(
                                    'assets/images/Coupon_4.png',
                                    width: MediaQuery.of(context).size.width,
                                    height: 180,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            if (widget.couponRef!.stampCount == 5)
                              Align(
                                alignment: AlignmentDirectional(-0.95, 0.01),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      40, 0, 40, 0),
                                  child: Image.asset(
                                    'assets/images/Coupon_5.png',
                                    width: MediaQuery.of(context).size.width,
                                    height: 180,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            if (widget.couponRef!.stampCount == 6)
                              Align(
                                alignment: AlignmentDirectional(-0.95, 0.01),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      40, 0, 40, 0),
                                  child: Image.asset(
                                    'assets/images/Coupon_6.png',
                                    width: MediaQuery.of(context).size.width,
                                    height: 180,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            if (widget.couponRef!.stampCount == 7)
                              Align(
                                alignment: AlignmentDirectional(-0.95, 0.01),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      40, 0, 40, 0),
                                  child: Image.asset(
                                    'assets/images/Coupon_7.png',
                                    width: MediaQuery.of(context).size.width,
                                    height: 180,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            if (widget.couponRef!.stampCount == 8)
                              Align(
                                alignment: AlignmentDirectional(-0.95, 0.01),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      40, 0, 40, 0),
                                  child: Image.asset(
                                    'assets/images/Coupon_8.png',
                                    width: MediaQuery.of(context).size.width,
                                    height: 180,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            if (widget.couponRef!.stampCount == 9)
                              Align(
                                alignment: AlignmentDirectional(-0.95, 0.01),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      40, 0, 40, 0),
                                  child: Image.asset(
                                    'assets/images/Coupon_9.png',
                                    width: MediaQuery.of(context).size.width,
                                    height: 180,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            if (widget.couponRef!.stampCount == 10)
                              Align(
                                alignment: AlignmentDirectional(-0.95, 0.01),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      40, 0, 40, 0),
                                  child: Image.asset(
                                    'assets/images/Coupon_10.png',
                                    width: MediaQuery.of(context).size.width,
                                    height: 180,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
