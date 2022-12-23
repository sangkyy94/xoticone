import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../backend/firebase_storage/storage.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/upload_media.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MyPuffStorEditWidget extends StatefulWidget {
  const MyPuffStorEditWidget({
    Key? key,
    this.storeRef,
    this.userRef,
    this.puffSttoryRef,
  }) : super(key: key);

  final DocumentReference? storeRef;
  final DocumentReference? userRef;
  final MyPuffStoryRecord? puffSttoryRef;

  @override
  _MyPuffStorEditWidgetState createState() => _MyPuffStorEditWidgetState();
}

class _MyPuffStorEditWidgetState extends State<MyPuffStorEditWidget> {
  bool isMediaUploading = false;
  String uploadedFileUrl = '';

  String? dropDownMoodValue;
  TextEditingController? textFieldStrainController;
  TextEditingController? textFieldStoryController;
  LatLng? currentUserLocationValue;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textFieldStoryController =
        TextEditingController(text: widget.puffSttoryRef!.contents);
    textFieldStrainController =
        TextEditingController(text: widget.puffSttoryRef!.strain);
  }

  @override
  void dispose() {
    textFieldStoryController?.dispose();
    textFieldStrainController?.dispose();
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
            context.pop();
          },
        ),
        title: Text(
          FFLocalizations.of(context).getText(
            'du0deokb' /* MY PUFF STORY */,
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
                width: double.infinity,
                height: 100,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(-0.95, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'zdt44vof' /* Edit Your Story */,
                          ),
                          style: FlutterFlowTheme.of(context).title1.override(
                                fontFamily: 'Montserrat',
                                color: Color(0xFF618682),
                              ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-0.95, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'cow0q5qk' /* Share  what you are feeling wi... */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF618682),
                                  ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 800,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Form(
                  key: formKey,
                  autovalidateMode: AutovalidateMode.disabled,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(-0.95, 0),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'aoeopl0e' /* MOOD */,
                              ),
                              style: FlutterFlowTheme.of(context).bodyText1,
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(15, 0, 15, 15),
                          child: StreamBuilder<List<MoodsRecord>>(
                            stream: queryMoodsRecord(),
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
                              List<MoodsRecord> dropDownMoodMoodsRecordList =
                                  snapshot.data!;
                              return FlutterFlowDropDown<String>(
                                initialOption: dropDownMoodValue ??=
                                    widget.puffSttoryRef!.mood,
                                options: dropDownMoodMoodsRecordList
                                    .map((e) => e.moodName!)
                                    .toList()
                                    .toList(),
                                onChanged: (val) =>
                                    setState(() => dropDownMoodValue = val),
                                width: 360,
                                height: 50,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Colors.black,
                                    ),
                                hintText: FFLocalizations.of(context).getText(
                                  '85fwdftv' /* Please select your mood */,
                                ),
                                fillColor: Colors.white,
                                elevation: 2,
                                borderColor: Color(0xFF618682),
                                borderWidth: 0,
                                borderRadius: 0,
                                margin: EdgeInsetsDirectional.fromSTEB(
                                    12, 4, 12, 4),
                                hidesUnderline: true,
                              );
                            },
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(-0.95, 0),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'hfuocw81' /* STRAIN */,
                                  ),
                                  style: FlutterFlowTheme.of(context).bodyText1,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                              child: InkWell(
                                onTap: () async {
                                  context.pushNamed('SearchStrain');
                                },
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    '47gjhchh' /* Search */,
                                  ),
                                  style: FlutterFlowTheme.of(context).bodyText1,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(22, 0, 22, 15),
                          child: TextFormField(
                            controller: textFieldStrainController,
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: FFLocalizations.of(context).getText(
                                '11ioiqil' /* Input strain name */,
                              ),
                              hintStyle: FlutterFlowTheme.of(context).bodyText2,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFF618682),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFF618682),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                            ),
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.95, 0),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'l0n7vn33' /* STORY */,
                              ),
                              style: FlutterFlowTheme.of(context).bodyText1,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(22, 0, 22, 0),
                          child: TextFormField(
                            controller: textFieldStoryController,
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: FFLocalizations.of(context).getText(
                                '30v7e9my' /* [Some hint text...] */,
                              ),
                              hintStyle: FlutterFlowTheme.of(context).bodyText2,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFF38B1E5),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFF38B1E5),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                            ),
                            style: FlutterFlowTheme.of(context).bodyText1,
                            maxLines: 5,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                          child: Container(
                            width: 200,
                            height: 200,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: Image.asset(
                                  'assets/images/Placeholder_1.png',
                                ).image,
                              ),
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: Color(0xFF38B1E5),
                                width: 5,
                              ),
                            ),
                            child: InkWell(
                              onTap: () async {
                                final selectedMedia =
                                    await selectMediaWithSourceBottomSheet(
                                  context: context,
                                  allowPhoto: true,
                                );
                                if (selectedMedia != null &&
                                    selectedMedia.every((m) =>
                                        validateFileFormat(
                                            m.storagePath, context))) {
                                  setState(() => isMediaUploading = true);
                                  var downloadUrls = <String>[];
                                  try {
                                    showUploadMessage(
                                      context,
                                      'Uploading file...',
                                      showLoading: true,
                                    );
                                    downloadUrls = (await Future.wait(
                                      selectedMedia.map(
                                        (m) async => await uploadData(
                                            m.storagePath, m.bytes),
                                      ),
                                    ))
                                        .where((u) => u != null)
                                        .map((u) => u!)
                                        .toList();
                                  } finally {
                                    ScaffoldMessenger.of(context)
                                        .hideCurrentSnackBar();
                                    isMediaUploading = false;
                                  }
                                  if (downloadUrls.length ==
                                      selectedMedia.length) {
                                    setState(() =>
                                        uploadedFileUrl = downloadUrls.first);
                                    showUploadMessage(context, 'Success!');
                                  } else {
                                    setState(() {});
                                    showUploadMessage(
                                        context, 'Failed to upload media');
                                    return;
                                  }
                                }
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                  widget.puffSttoryRef!.photo!,
                                  width: 200,
                                  height: 200,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              currentUserLocationValue =
                                  await getCurrentUserLocation(
                                      defaultLocation: LatLng(0.0, 0.0));

                              final myPuffStoryCreateData =
                                  createMyPuffStoryRecordData(
                                writer: currentUserReference,
                                strain: textFieldStrainController!.text,
                                mood: dropDownMoodValue,
                                createdAt: getCurrentTimestamp,
                                contents: textFieldStoryController!.text,
                              );
                              await MyPuffStoryRecord.collection
                                  .doc()
                                  .set(myPuffStoryCreateData);

                              final usersUpdateData = createUsersRecordData(
                                tempLocation: currentUserLocationValue,
                              );
                              await widget.userRef!.update(usersUpdateData);
                              context.pop();
                            },
                            text: FFLocalizations.of(context).getText(
                              '2ucj9oi3' /* POST  */,
                            ),
                            options: FFButtonOptions(
                              width: 300,
                              height: 50,
                              color: FlutterFlowTheme.of(context).primaryColor,
                              textStyle: FlutterFlowTheme.of(context).title3,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
