import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'signup_widget.dart' show SignupWidget;
import 'package:flutter/material.dart';

class SignupModel extends FlutterFlowModel<SignupWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailField widget.
  FocusNode? emailFieldFocusNode;
  TextEditingController? emailFieldTextController;
  String? Function(BuildContext, String?)? emailFieldTextControllerValidator;
  // State field(s) for passwordField widget.
  late FocusNode passwordFieldPasswordVisibilityFocusNode;
  FocusNode? passwordFieldFocusNode;
  TextEditingController? passwordFieldTextController;
  late bool passwordFieldVisibility;
  String? Function(BuildContext, String?)? passwordFieldTextControllerValidator;
  // State field(s) for passwordField2 widget.
  late FocusNode passwordField2PasswordVisibilityFocusNode;
  FocusNode? passwordField2FocusNode;
  TextEditingController? passwordField2TextController;
  late bool passwordField2Visibility;
  String? Function(BuildContext, String?)?
      passwordField2TextControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordFieldPasswordVisibilityFocusNode = FocusNode();
    passwordFieldVisibility = false;
    passwordField2PasswordVisibilityFocusNode = FocusNode();
    passwordField2Visibility = false;
  }

  @override
  void dispose() {
    emailFieldFocusNode?.dispose();
    emailFieldTextController?.dispose();

    passwordFieldFocusNode?.dispose();
    passwordFieldTextController?.dispose();
    passwordFieldPasswordVisibilityFocusNode.dispose();
    passwordField2FocusNode?.dispose();
    passwordField2TextController?.dispose();
    passwordField2PasswordVisibilityFocusNode.dispose();
  }
}
