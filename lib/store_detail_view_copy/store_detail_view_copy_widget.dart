import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import '../flutter_flow/random_data_util.dart' as random_data;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class StoreDetailViewCopyWidget extends StatefulWidget {
  const StoreDetailViewCopyWidget({
    Key? key,
    this.storeRef,
  }) : super(key: key);

  final DocumentReference? storeRef;

  @override
  _StoreDetailViewCopyWidgetState createState() =>
      _StoreDetailViewCopyWidgetState();
}

class _StoreDetailViewCopyWidgetState extends State<StoreDetailViewCopyWidget>
    with TickerProviderStateMixin {
  double? ratingBarValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<StoresRecord>(
      stream: StoresRecord.getDocument(widget.storeRef!),
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
        final storeDetailViewCopyStoresRecord = snapshot.data!;
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
            title: Text(
              storeDetailViewCopyStoresRecord.nameStore!,
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
          body: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Container(
                  width: double.infinity,
                  child: Stack(
                    children: [
                      Image.network(
                        storeDetailViewCopyStoresRecord.mainPhoto!,
                        width: double.infinity,
                        height: 250,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'cog0c3z2' /*  */,
                                ),
                                style: FlutterFlowTheme.of(context).title3,
                              ),
                            ),
                            Container(
                              width: 150,
                              height: 80,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  if (FFAppState().favoriteStoreList.contains(
                                          storeDetailViewCopyStoresRecord
                                              .storeUUID) ==
                                      false)
                                    FFButtonWidget(
                                      onPressed: () async {
                                        FFAppState().addToFavoriteStoreList(
                                            storeDetailViewCopyStoresRecord
                                                .storeUUID!);

                                        final storesUpdateData =
                                            createStoresRecordData(
                                          favoritedBy: currentUserReference,
                                        );
                                        await storeDetailViewCopyStoresRecord
                                            .reference
                                            .update(storesUpdateData);

                                        final usersUpdateData = {
                                          'favorite_Stores':
                                              FieldValue.arrayUnion(
                                                  [widget.storeRef]),
                                        };
                                        await currentUserReference!
                                            .update(usersUpdateData);
                                      },
                                      text: FFLocalizations.of(context).getText(
                                        'riwkh6tt' /* Favorite */,
                                      ),
                                      options: FFButtonOptions(
                                        width: 130,
                                        height: 40,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
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
                                  if (FFAppState().favoriteStoreList.contains(
                                          storeDetailViewCopyStoresRecord
                                              .storeUUID) ==
                                      true)
                                    FFButtonWidget(
                                      onPressed: () async {
                                        FFAppState()
                                            .removeFromFavoriteStoreList(
                                                storeDetailViewCopyStoresRecord
                                                    .storeUUID!);

                                        final storesUpdateData = {
                                          'favorited_By': FieldValue.delete(),
                                        };
                                        await storeDetailViewCopyStoresRecord
                                            .reference
                                            .update(storesUpdateData);

                                        final usersUpdateData = {
                                          'favorite_Stores':
                                              FieldValue.arrayRemove([
                                            storeDetailViewCopyStoresRecord
                                                .reference
                                          ]),
                                        };
                                        await currentUserReference!
                                            .update(usersUpdateData);
                                      },
                                      text: FFLocalizations.of(context).getText(
                                        '0rkcif2q' /* Favorited */,
                                      ),
                                      options: FFButtonOptions(
                                        width: 130,
                                        height: 40,
                                        color: FlutterFlowTheme.of(context)
                                            .darkSeaGreen,
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
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'ym4dm9ml' /* Address */,
                              ),
                              style: FlutterFlowTheme.of(context).title3,
                            ),
                          ),
                          Container(
                            width: 150,
                            height: 30,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    RatingBar.builder(
                                      onRatingUpdate: (newValue) => setState(
                                          () => ratingBarValue = newValue),
                                      itemBuilder: (context, index) => Icon(
                                        Icons.star_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryColor,
                                      ),
                                      direction: Axis.horizontal,
                                      initialRating: ratingBarValue ??=
                                          storeDetailViewCopyStoresRecord
                                              .numberRating!,
                                      unratedColor: Color(0xFF9E9E9E),
                                      itemCount: 5,
                                      itemSize: 20,
                                      glowColor: FlutterFlowTheme.of(context)
                                          .secondaryColor,
                                    ),
                                    Text(
                                      formatNumber(
                                        storeDetailViewCopyStoresRecord
                                            .numberRating!,
                                        formatType: FormatType.decimal,
                                        decimalType: DecimalType.periodDecimal,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 4, 0, 0),
                        child: Text(
                          storeDetailViewCopyStoresRecord.address!,
                          style: FlutterFlowTheme.of(context).bodyText2,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 24),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                            child: Container(
                              width: double.infinity,
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              child: ExpandableNotifier(
                                initialExpanded: false,
                                child: ExpandablePanel(
                                  header: Text(
                                    FFLocalizations.of(context).getText(
                                      'p12abcvw' /* Description */,
                                    ),
                                    style: FlutterFlowTheme.of(context).title3,
                                  ),
                                  collapsed: Container(
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    child: Text(
                                      storeDetailViewCopyStoresRecord
                                          .description!,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText2,
                                    ),
                                  ),
                                  expanded: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          'xqy69o6c' /* Lorem ipsum dolor sit amet, co... */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText2,
                                      ),
                                    ],
                                  ),
                                  theme: ExpandableThemeData(
                                    tapHeaderToExpand: true,
                                    tapBodyToExpand: false,
                                    tapBodyToCollapse: false,
                                    headerAlignment:
                                        ExpandablePanelHeaderAlignment.center,
                                    hasIcon: true,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 12),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            '6dolitsd' /* Amenities */,
                          ),
                          style: FlutterFlowTheme.of(context).title3,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(12, 0, 12, 24),
                        child: Wrap(
                          spacing: 8,
                          runSpacing: 8,
                          alignment: WrapAlignment.center,
                          crossAxisAlignment: WrapCrossAlignment.start,
                          direction: Axis.horizontal,
                          runAlignment: WrapAlignment.start,
                          verticalDirection: VerticalDirection.down,
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              width: double.infinity,
                              height: 120,
                              constraints: BoxConstraints(
                                maxWidth: 110,
                              ),
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.single_bed_outlined,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 36,
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 8, 0, 0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'np7f7bo0' /* 5 */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .subtitle1,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 4, 0, 0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'oiw3e283' /* Strains */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText2,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height: 120,
                              constraints: BoxConstraints(
                                maxWidth: 110,
                              ),
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.bathtub_outlined,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 36,
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 8, 0, 0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'uc0jppku' /* 3.5 */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .subtitle1,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 4, 0, 0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'bx8yz164' /* Products */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText2,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height: 120,
                              constraints: BoxConstraints(
                                maxWidth: 110,
                              ),
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.legend_toggle_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 36,
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 8, 0, 0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'gu6sdtan' /* 4,302 */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .subtitle1,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 4, 0, 0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'de5sn0nm' /* Square Feet */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText2,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 10),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'c1i70pga' /* What we are selling now */,
                          ),
                          style: FlutterFlowTheme.of(context).title3,
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 300,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: StreamBuilder<List<ProductsRecord>>(
                          stream: queryProductsRecord(
                            queryBuilder: (productsRecord) =>
                                productsRecord.where('Store_UUID',
                                    isEqualTo: storeDetailViewCopyStoresRecord
                                        .storeUUID),
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
                            List<ProductsRecord> listViewProductsRecordList =
                                snapshot.data!;
                            return ListView.builder(
                              padding: EdgeInsets.zero,
                              primary: false,
                              scrollDirection: Axis.vertical,
                              itemCount: listViewProductsRecordList.length,
                              itemBuilder: (context, listViewIndex) {
                                final listViewProductsRecord =
                                    listViewProductsRecordList[listViewIndex];
                                return InkWell(
                                  onTap: () async {
                                    context.pushNamed(
                                      'ProductDetailsView',
                                      queryParams: {
                                        'productRef': serializeParam(
                                          listViewProductsRecord,
                                          ParamType.Document,
                                        ),
                                        'storeRef': serializeParam(
                                          storeDetailViewCopyStoresRecord,
                                          ParamType.Document,
                                        ),
                                      }.withoutNulls,
                                      extra: <String, dynamic>{
                                        'productRef': listViewProductsRecord,
                                        'storeRef':
                                            storeDetailViewCopyStoresRecord,
                                      },
                                    );
                                  },
                                  child: Container(
                                    width: double.infinity,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: 100,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                blurRadius: 3,
                                                color: Color(0x411D2429),
                                                offset: Offset(0, 1),
                                              )
                                            ],
                                            borderRadius:
                                                BorderRadius.circular(16),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    8, 8, 8, 8),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 1, 1, 1),
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12),
                                                    child: Image.network(
                                                      'https://images.unsplash.com/photo-1574914629385-46448b767aec?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8bGF0dGV8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60',
                                                      width: 100,
                                                      height: 100,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                8, 8, 4, 0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          listViewProductsRecord
                                                              .nameProduct!,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .subtitle1
                                                              .override(
                                                                fontFamily:
                                                                    'Outfit',
                                                                color: Color(
                                                                    0xFF090F13),
                                                                fontSize: 20,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                        ),
                                                        Expanded(
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        4,
                                                                        8,
                                                                        0),
                                                            child: AutoSizeText(
                                                              listViewProductsRecord
                                                                  .description1!
                                                                  .maybeHandleOverflow(
                                                                maxChars: 70,
                                                                replacement:
                                                                    '…',
                                                              ),
                                                              textAlign:
                                                                  TextAlign
                                                                      .start,
                                                              maxLines: 2,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText2
                                                                  .override(
                                                                    fontFamily:
                                                                        'Outfit',
                                                                    color: Color(
                                                                        0xFF7C8791),
                                                                    fontSize:
                                                                        14,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal,
                                                                  ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 4, 0, 0),
                                                      child: Icon(
                                                        Icons
                                                            .chevron_right_rounded,
                                                        color:
                                                            Color(0xFF57636C),
                                                        size: 24,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 0, 4, 8),
                                                      child: Text(
                                                        '${listViewProductsRecord.price1g?.toString()}THB / gram',
                                                        textAlign:
                                                            TextAlign.end,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Outfit',
                                                                  color: Color(
                                                                      0xFF4B39EF),
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
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
                                                    'qkht453d' /* Reviews */,
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
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 20,
                                          ),
                                          onPressed: () async {
                                            context.pushNamed(
                                              'StoreReviewPost',
                                              queryParams: {
                                                'storeRef': serializeParam(
                                                  storeDetailViewCopyStoresRecord
                                                      .reference,
                                                  ParamType.DocumentReference,
                                                ),
                                                'ownerUserRef': serializeParam(
                                                  storeDetailViewCopyStoresRecord
                                                      .ownerRef,
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
                                          List<ReviewForStoreRecord>>(
                                        stream: queryReviewForStoreRecord(
                                          queryBuilder:
                                              (reviewForStoreRecord) =>
                                                  reviewForStoreRecord.where(
                                                      'Store',
                                                      isEqualTo:
                                                          widget.storeRef),
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
                                          List<ReviewForStoreRecord>
                                              listViewReviewForStoreRecordList =
                                              snapshot.data!;
                                          return ListView.builder(
                                            padding: EdgeInsets.zero,
                                            primary: false,
                                            shrinkWrap: true,
                                            scrollDirection: Axis.vertical,
                                            itemCount:
                                                listViewReviewForStoreRecordList
                                                    .length,
                                            itemBuilder:
                                                (context, listViewIndex) {
                                              final listViewReviewForStoreRecord =
                                                  listViewReviewForStoreRecordList[
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
                                                    InkWell(
                                                      onTap: () async {
                                                        context.pushNamed(
                                                            'MemberView');
                                                      },
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(40),
                                                        child: Image.network(
                                                          listViewReviewForStoreRecord
                                                              .thumbnail!,
                                                          width: 40,
                                                          height: 40,
                                                          fit: BoxFit.cover,
                                                        ),
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
                                                                    listViewReviewForStoreRecord
                                                                        .title!,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText1,
                                                                  ),
                                                                  Text(
                                                                    listViewReviewForStoreRecord
                                                                        .contents!,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText2,
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
                                                            '${dateTimeFormat(
                                                              'relative',
                                                              functions
                                                                  .timeGapCalculation(
                                                                      listViewReviewForStoreRecord
                                                                          .createdAt,
                                                                      getCurrentTimestamp)
                                                                  ?.start,
                                                              locale: FFLocalizations
                                                                      .of(context)
                                                                  .languageCode,
                                                            )}',
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
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryText,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 7,
                      color: Color(0x32000000),
                      offset: Offset(0, -2),
                    )
                  ],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(0),
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 60, 0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        '605t8vlq' /* Coupon */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .title1
                                          .override(
                                            fontFamily: 'Montserrat',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            fontSize: 22,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                              if ((currentUserDocument?.stmpCpnSTOREList
                                              ?.toList() ??
                                          [])
                                      .contains(widget.storeRef) ==
                                  false)
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      40, 0, 15, 10),
                                  child: AuthUserStreamWidget(
                                    child:
                                        StreamBuilder<List<StampCouponsRecord>>(
                                      stream: queryStampCouponsRecord(
                                        queryBuilder: (stampCouponsRecord) =>
                                            stampCouponsRecord.where(
                                                'Store_Ref',
                                                isEqualTo: widget.storeRef),
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
                                            btnDownloadStampCouponsRecordList =
                                            snapshot.data!;
                                        return FFButtonWidget(
                                          onPressed: () async {
                                            final stampCouponsCreateData =
                                                createStampCouponsRecordData(
                                              couponName:
                                                  '${storeDetailViewCopyStoresRecord.nameStore}\'s Stamp Coupon',
                                              stampCount: 0,
                                              received: true,
                                              storeRef:
                                                  storeDetailViewCopyStoresRecord
                                                      .reference,
                                              storeName:
                                                  storeDetailViewCopyStoresRecord
                                                      .nameStore,
                                              customerRef: currentUserReference,
                                              customerId: currentUserEmail,
                                              couponId:
                                                  random_data.randomString(
                                                8,
                                                8,
                                                false,
                                                true,
                                                true,
                                              ),
                                              createdAt: getCurrentTimestamp,
                                              userThumbnail: currentUserPhoto,
                                            );
                                            await StampCouponsRecord.collection
                                                .doc()
                                                .set(stampCouponsCreateData);

                                            final usersUpdateData = {
                                              'stmp_Cpn_STORE_List':
                                                  FieldValue.arrayUnion(
                                                      [widget.storeRef]),
                                            };
                                            await currentUserReference!
                                                .update(usersUpdateData);
                                          },
                                          text: FFLocalizations.of(context)
                                              .getText(
                                            'pmmhgenu' /* DOWNLOAD */,
                                          ),
                                          options: FFButtonOptions(
                                            width: 120,
                                            height: 40,
                                            color: Color(0xFF38B1E5),
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .subtitle2
                                                    .override(
                                                      fontFamily: 'Outfit',
                                                      color: Colors.white,
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                            elevation: 3,
                                            borderSide: BorderSide(
                                              color: Colors.transparent,
                                              width: 1,
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                            ],
                          ),
                          StreamBuilder<List<StampCouponsRecord>>(
                            stream: queryStampCouponsRecord(
                              queryBuilder: (stampCouponsRecord) =>
                                  stampCouponsRecord.where('Store_Ref',
                                      isEqualTo: widget.storeRef),
                              limit: 1,
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
                                  columnStampCouponsRecordList = snapshot.data!;
                              return Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: List.generate(
                                    columnStampCouponsRecordList.length,
                                    (columnIndex) {
                                  final columnStampCouponsRecord =
                                      columnStampCouponsRecordList[columnIndex];
                                  return Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 10, 0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'ovmn6av1' /* COUPON ID :  */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 4, 10, 0),
                                        child: Text(
                                          '${columnStampCouponsRecord.couponId}',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText2,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            60, 0, 15, 0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            context.pushNamed(
                                              'StampCoupon',
                                              queryParams: {
                                                'storeRef': serializeParam(
                                                  widget.storeRef,
                                                  ParamType.DocumentReference,
                                                ),
                                                'couponRef': serializeParam(
                                                  columnStampCouponsRecord,
                                                  ParamType.Document,
                                                ),
                                              }.withoutNulls,
                                              extra: <String, dynamic>{
                                                'couponRef':
                                                    columnStampCouponsRecord,
                                              },
                                            );
                                          },
                                          text: FFLocalizations.of(context)
                                              .getText(
                                            '6r7dho7l' /* OPEN */,
                                          ),
                                          options: FFButtonOptions(
                                            width: 140,
                                            height: 50,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryColor,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .subtitle2
                                                    .override(
                                                      fontFamily: 'Outfit',
                                                      color: Colors.white,
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                            elevation: 3,
                                            borderSide: BorderSide(
                                              color: Colors.transparent,
                                              width: 1,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                }),
                              );
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
