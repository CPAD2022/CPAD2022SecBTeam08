import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInPageWidget extends StatefulWidget {
  const SignInPageWidget({Key? key}) : super(key: key);

  @override
  _SignInPageWidgetState createState() => _SignInPageWidgetState();
}

class _SignInPageWidgetState extends State<SignInPageWidget> {
  TextEditingController? emailController;
  TextEditingController? uidController;

  late bool uidVisibility;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      GoRouter.of(context).prepareAuthEvent();
      final user = await signInWithGoogle(context);
      if (user == null) {
        return;
      }

      context.goNamedAuth('EmergencyPage', mounted);
    });

    emailController = TextEditingController();
    uidController = TextEditingController();
    uidVisibility = false;
  }

  @override
  void dispose() {
    emailController?.dispose();
    uidController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFA9CAF8),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(-0.03, -1.07),
                child: Image.asset(
                  'assets/images/MicrosoftTeams-image.png',
                  width: 300,
                  height: 400,
                  fit: BoxFit.contain,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, 0.01),
                child: TextFormField(
                  controller: emailController,
                  autofocus: true,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: 'Enter Email',
                    hintStyle: FlutterFlowTheme.of(context).bodyText2,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    errorBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    focusedErrorBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    filled: true,
                    fillColor: Color(0xFFD7BCE4),
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Gaegu',
                        fontSize: 30,
                      ),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, 0.18),
                child: TextFormField(
                  controller: uidController,
                  autofocus: true,
                  obscureText: !uidVisibility,
                  decoration: InputDecoration(
                    hintText: 'Enter password',
                    hintStyle: FlutterFlowTheme.of(context).bodyText2,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    errorBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    focusedErrorBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    filled: true,
                    fillColor: Color(0xFFD7BCE4),
                    suffixIcon: InkWell(
                      onTap: () => setState(
                        () => uidVisibility = !uidVisibility,
                      ),
                      focusNode: FocusNode(skipTraversal: true),
                      child: Icon(
                        uidVisibility
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                        color: Color(0xFF757575),
                        size: 22,
                      ),
                    ),
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Gaegu',
                        fontSize: 30,
                      ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.06, 0.4),
                child: FFButtonWidget(
                  onPressed: () async {
                    GoRouter.of(context).prepareAuthEvent();

                    final user = await signInWithEmail(
                      context,
                      emailController!.text,
                      uidController!.text,
                    );
                    if (user == null) {
                      return;
                    }

                    context.goNamedAuth('EmergencyPage', mounted);
                  },
                  text: 'LOGIN',
                  options: FFButtonOptions(
                    width: 180,
                    height: 50,
                    color: Color(0xFFD27E7E),
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Poppins',
                          color: Color(0xFF0E0C0E),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.02, -0.15),
                child: Text(
                  'SHAKTHI',
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Graduate',
                        color: Color(0xFF1E7DAD),
                        fontSize: 40,
                      ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.03, 0.57),
                child: Text(
                  'OR',
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.11, 0.75),
                child: Container(
                  width: 350,
                  height: 50,
                  child: Stack(
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0.03, 0.69),
                        child: FFButtonWidget(
                          onPressed: () {
                            print('Button pressed ...');
                          },
                          text: 'Sign in with Google',
                          icon: Icon(
                            Icons.add,
                            color: Colors.transparent,
                            size: 20,
                          ),
                          options: FFButtonOptions(
                            width: 450,
                            height: 80,
                            color: Colors.white,
                            textStyle: GoogleFonts.getFont(
                              'Roboto',
                              color: Color(0xFF606060),
                              fontSize: 25,
                            ),
                            elevation: 4,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 0,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-0.83, 0),
                        child: Container(
                          width: 28,
                          height: 28,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image.network(
                            'https://i0.wp.com/nanophorm.com/wp-content/uploads/2018/04/google-logo-icon-PNG-Transparent-Background.png?w=1000&ssl=1',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.41, 0.9),
                child: Text(
                  'Not yet Registered',
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Gugi',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.47, 0.9),
                child: Text(
                  'Sign Up',
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Gugi',
                        color: Color(0xFF4343B0),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
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
