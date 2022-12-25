import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProductDetailsViewWidget extends StatefulWidget {
  const ProductDetailsViewWidget({
    Key? key,
    this.productRef,
    this.storeRef,
    this.strainRef,
  }) : super(key: key);

  final ProductsRecord? productRef;
  final StoresRecord? storeRef;
  final DocumentReference? strainRef;

  @override
  _ProductDetailsViewWidgetState createState() =>
      _ProductDetailsViewWidgetState();
}

class _ProductDetailsViewWidgetState extends State<ProductDetailsViewWidget>
    with TickerProviderStateMixin {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<List<ProductsRecord>>(
      stream: queryProductsRecord(
        singleRecord: true,
      ),
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
        List<ProductsRecord> productDetailsViewProductsRecordList =
            snapshot.data!;
        // Return an empty Container when the item does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final productDetailsViewProductsRecord =
            productDetailsViewProductsRecordList.isNotEmpty
                ? productDetailsViewProductsRecordList.first
                : null;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
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
            title: StreamBuilder<List<StoresRecord>>(
              stream: queryStoresRecord(
                singleRecord: true,
              ),
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
                List<StoresRecord> textStoresRecordList = snapshot.data!;
                // Return an empty Container when the item does not exist.
                if (snapshot.data!.isEmpty) {
                  return Container();
                }
                final textStoresRecord = textStoresRecordList.isNotEmpty
                    ? textStoresRecordList.first
                    : null;
                return Text(
                  widget.storeRef!.nameStore!,
                  style: FlutterFlowTheme.of(context).title2.override(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                        fontSize: 22,
                      ),
                );
              },
            ),
            actions: [],
            centerTitle: true,
            elevation: 2,
          ),
          body: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).ashGray,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(15, 15, 0, 0),
                        child: Text(
                          widget.productRef!.nameProduct!,
                          style: FlutterFlowTheme.of(context).title1.override(
                                fontFamily: 'Montserrat',
                                color: FlutterFlowTheme.of(context).white,
                              ),
                        ),
                      ),
                      if (widget.storeRef!.ownerID == currentUserEmail)
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                          child: InkWell(
                            onTap: () async {
                              context.pushNamed(
                                'Product_Edit',
                                queryParams: {
                                  'productRef': serializeParam(
                                    widget.productRef,
                                    ParamType.Document,
                                  ),
                                  'storeRef': serializeParam(
                                    widget.storeRef,
                                    ParamType.Document,
                                  ),
                                }.withoutNulls,
                                extra: <String, dynamic>{
                                  'productRef': widget.productRef,
                                  'storeRef': widget.storeRef,
                                },
                              );
                            },
                            child: Icon(
                              Icons.settings_outlined,
                              color: Colors.black,
                              size: 24,
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.94,
                        height: 400,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 6,
                              color: Color(0x3E000000),
                              offset: Offset(0, 2),
                            )
                          ],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(
                            'https://images.unsplash.com/photo-1545127398-5aae47194b22?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTU0fHxwcm9kdWN0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60',
                            width: MediaQuery.of(context).size.width * 0.96,
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'wr2l942d' /* Base Price */,
                          ),
                          style: FlutterFlowTheme.of(context).title1,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        FFLocalizations.of(context).getText(
                          'r1ma5jdc' /*  */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyText2,
                      ),
                      Text(
                        '${widget.productRef!.price1g?.toString()} THB / 1 gram',
                        textAlign: TextAlign.end,
                        maxLines: 1,
                        style: FlutterFlowTheme.of(context).title3.override(
                              fontFamily: 'Lexend Deca',
                              color: Color(0xFF38B1E5),
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 8),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      if (widget.productRef!.thc != null)
                        Text(
                          'THC : ${widget.productRef!.thc?.toString()}%',
                          style: FlutterFlowTheme.of(context).title3,
                        ),
                      if (widget.productRef!.cbd != null)
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                          child: Text(
                            'CBD : ${widget.productRef!.cbd?.toString()}%',
                            style: FlutterFlowTheme.of(context).title3,
                          ),
                        ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 8),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      if (widget.productRef!.seedBank != '')
                        Text(
                          FFLocalizations.of(context).getText(
                            'bko2o3ac' /* SEED BANK :  */,
                          ),
                          style: FlutterFlowTheme.of(context).title3,
                        ),
                      if (widget.productRef!.seedBank != '')
                        Text(
                          widget.productRef!.seedBank!,
                          style: FlutterFlowTheme.of(context).title3.override(
                                fontFamily: 'Poppins',
                                color:
                                    FlutterFlowTheme.of(context).darkSeaGreen,
                              ),
                        ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 8),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      if (widget.productRef!.farm != '')
                        Text(
                          FFLocalizations.of(context).getText(
                            'p0h4uic5' /* FARM :   */,
                          ),
                          style: FlutterFlowTheme.of(context).title3,
                        ),
                      if (widget.productRef!.farm != '')
                        Text(
                          widget.productRef!.farm!,
                          style: FlutterFlowTheme.of(context).title3.override(
                                fontFamily: 'Poppins',
                                color:
                                    FlutterFlowTheme.of(context).darkSeaGreen,
                              ),
                        ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 8),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      if (widget.productRef!.environment != '')
                        Text(
                          FFLocalizations.of(context).getText(
                            'y4yymz18' /* ENVIRONMENT :   */,
                          ),
                          style: FlutterFlowTheme.of(context).title3,
                        ),
                      if (widget.productRef!.environment != '')
                        Text(
                          widget.productRef!.environment!,
                          style: FlutterFlowTheme.of(context).title3.override(
                                fontFamily: 'Poppins',
                                color:
                                    FlutterFlowTheme.of(context).darkSeaGreen,
                              ),
                        ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 8),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      if (widget.productRef!.farmingMethod != '')
                        Text(
                          FFLocalizations.of(context).getText(
                            '4k9tgim1' /* FARMING METHOD :   */,
                          ),
                          style: FlutterFlowTheme.of(context).title3,
                        ),
                      if (widget.productRef!.farmingMethod != '')
                        Text(
                          widget.productRef!.farmingMethod!,
                          style: FlutterFlowTheme.of(context).title3.override(
                                fontFamily: 'Poppins',
                                color:
                                    FlutterFlowTheme.of(context).darkSeaGreen,
                              ),
                        ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 8),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        FFLocalizations.of(context).getText(
                          'ksefq2h0' /* Additional Price */,
                        ),
                        style: FlutterFlowTheme.of(context).title1,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 8),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (widget.productRef!.price3g! > 0)
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'ovo1omj9' /* Price / 3 grams :  */,
                                ),
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .darkSeaGreen,
                                    ),
                              ),
                            ),
                          if (productDetailsViewProductsRecord!.pricce3halfg! >
                              0)
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'vf2db8wa' /* Price / 3.5 grams :  */,
                                ),
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .darkSeaGreen,
                                    ),
                              ),
                            ),
                          if (productDetailsViewProductsRecord!.price7g! > 0)
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'q1i41isg' /* Price / 7 grams :  */,
                                ),
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .darkSeaGreen,
                                    ),
                              ),
                            ),
                          if (productDetailsViewProductsRecord!.price14g! > 0)
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'own0wld7' /* Price / 14 grams :  */,
                                ),
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .darkSeaGreen,
                                    ),
                              ),
                            ),
                          if (productDetailsViewProductsRecord!.pricce28g! > 0)
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'aqkc6z8i' /* Price / 28 grams :  */,
                                ),
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .darkSeaGreen,
                                    ),
                              ),
                            ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (widget.productRef!.price3g! > 0)
                            Text(
                              '${widget.productRef!.price3g?.toString()} THB',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .darkSeaGreen,
                                  ),
                            ),
                          if (widget.productRef!.pricce3halfg! > 0)
                            Text(
                              '${widget.productRef!.pricce3halfg?.toString()} THB',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .darkSeaGreen,
                                  ),
                            ),
                          if (widget.productRef!.price7g! > 0)
                            Text(
                              '${widget.productRef!.price7g?.toString()} THB',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .darkSeaGreen,
                                  ),
                            ),
                          if (widget.productRef!.price14g! > 0)
                            Text(
                              '${widget.productRef!.price14g?.toString()} THB',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .darkSeaGreen,
                                  ),
                            ),
                          if (widget.productRef!.pricce28g! > 0)
                            Text(
                              '${widget.productRef!.pricce28g?.toString()} THB',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .darkSeaGreen,
                                  ),
                            ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        FFLocalizations.of(context).getText(
                          'kdwcoea2' /* Description */,
                        ),
                        style: FlutterFlowTheme.of(context).title1,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          widget.productRef!.description1!,
                          style: FlutterFlowTheme.of(context).bodyText2,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        height: 300,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: ListView(
                          padding: EdgeInsets.zero,
                          primary: false,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16, 16, 16, 16),
                              child: Container(
                                width: 100,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12, 0, 0, 0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'd764nolz' /* Reviews */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .title3,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        FlutterFlowIconButton(
                                          borderColor: Colors.transparent,
                                          borderRadius: 30,
                                          borderWidth: 1,
                                          buttonSize: 40,
                                          icon: Icon(
                                            Icons.post_add_outlined,
                                            color: Color(0xFF38B1E5),
                                            size: 20,
                                          ),
                                          onPressed: () async {
                                            context.pushNamed(
                                              'ProductReviewPost',
                                              queryParams: {
                                                'productref': serializeParam(
                                                  widget.productRef!.reference,
                                                  ParamType.DocumentReference,
                                                ),
                                              }.withoutNulls,
                                            );
                                          },
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 12, 0, 12),
                                      child: StreamBuilder<
                                          List<ReviewForProductRecord>>(
                                        stream: queryReviewForProductRecord(
                                          queryBuilder:
                                              (reviewForProductRecord) =>
                                                  reviewForProductRecord
                                                      .where('product',
                                                          isEqualTo:
                                                              widget.productRef!
                                                                  .reference)
                                                      .orderBy('created_at',
                                                          descending: true),
                                        ),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 50,
                                                height: 50,
                                                child: SpinKitRipple(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryColor,
                                                  size: 50,
                                                ),
                                              ),
                                            );
                                          }
                                          List<ReviewForProductRecord>
                                              listViewReviewForProductRecordList =
                                              snapshot.data!;
                                          return ListView.builder(
                                            padding: EdgeInsets.zero,
                                            primary: false,
                                            shrinkWrap: true,
                                            scrollDirection: Axis.vertical,
                                            itemCount:
                                                listViewReviewForProductRecordList
                                                    .length,
                                            itemBuilder:
                                                (context, listViewIndex) {
                                              final listViewReviewForProductRecord =
                                                  listViewReviewForProductRecordList[
                                                      listViewIndex];
                                              return Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 0, 12),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              40),
                                                      child: Image.network(
                                                        listViewReviewForProductRecord
                                                            .thumbnail!,
                                                        width: 40,
                                                        height: 40,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(12,
                                                                      0, 0, 0),
                                                          child: Container(
                                                            width: 320,
                                                            constraints:
                                                                BoxConstraints(
                                                              maxWidth: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width *
                                                                  0.75,
                                                            ),
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0xFF618682),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          12,
                                                                          8,
                                                                          12,
                                                                          8),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                    listViewReviewForProductRecord
                                                                        .title!,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText1,
                                                                  ),
                                                                  Text(
                                                                    listViewReviewForProductRecord
                                                                        .contents!,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText2
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          color:
                                                                              Color(0xFFB1C6C4),
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(12,
                                                                      4, 0, 0),
                                                          child: Text(
                                                            dateTimeFormat(
                                                              'relative',
                                                              listViewReviewForProductRecord
                                                                  .createdAt!,
                                                              locale: FFLocalizations
                                                                      .of(context)
                                                                  .languageCode,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText2,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
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
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
