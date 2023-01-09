import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class StrainListApprovalWidget extends StatefulWidget {
  const StrainListApprovalWidget({
    Key? key,
    this.storeRef,
    this.strainRef,
  }) : super(key: key);

  final StoresRecord? storeRef;
  final StrainsRecord? strainRef;

  @override
  _StrainListApprovalWidgetState createState() =>
      _StrainListApprovalWidgetState();
}

class _StrainListApprovalWidgetState extends State<StrainListApprovalWidget> {
  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      height: 220,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            color: Color(0x3B1D2429),
            offset: Offset(0, -3),
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
        padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 20),
              child: Text(
                FFLocalizations.of(context).getText(
                  'wmqc9zji' /* Update  product list */,
                ),
                style: FlutterFlowTheme.of(context).title3,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
              child: FFButtonWidget(
                onPressed: () async {
                  final storesUpdateData = {
                    'strain_Product_List':
                        FieldValue.arrayUnion([widget.strainRef!.reference]),
                  };
                  await widget.storeRef!.reference.update(storesUpdateData);
                  Navigator.pop(context);
                  Navigator.pop(context);
                },
                text: FFLocalizations.of(context).getText(
                  'v9sn3s1j' /* Approve */,
                ),
                options: FFButtonOptions(
                  width: double.infinity,
                  height: 60,
                  color: FlutterFlowTheme.of(context).primaryColor,
                  textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                        fontFamily: 'Lexend Deca',
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
