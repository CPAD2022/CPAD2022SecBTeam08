import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EmergencyPageWidget extends StatefulWidget {
  const EmergencyPageWidget({
    Key? key,
    this.userName,
  }) : super(key: key);

  final String? userName;

  @override
  _EmergencyPageWidgetState createState() => _EmergencyPageWidgetState();
}

class _EmergencyPageWidgetState extends State<EmergencyPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: InkWell(
            onTap: () async {
              GoRouter.of(context).prepareAuthEvent();
              await signOut();

              context.goNamedAuth('SignupPage', mounted);
            },
            child: Stack(
              children: [
                Align(
                  alignment: AlignmentDirectional(0.06, -0.96),
                  child: Text(
                    'EMERGENCY TAB',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
                          color: Color(0xFF0EA6DE),
                          fontSize: 40,
                          fontWeight: FontWeight.w800,
                        ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.02, 0.92),
                  child: FFButtonWidget(
                    onPressed: () async {
                      GoRouter.of(context).prepareAuthEvent();
                      await signOut();

                      context.goNamedAuth('SignupPage', mounted);
                    },
                    text: 'Logout',
                    options: FFButtonOptions(
                      width: 130,
                      height: 40,
                      color: Color(0xFFE1525C),
                      textStyle:
                          FlutterFlowTheme.of(context).subtitle2.override(
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
