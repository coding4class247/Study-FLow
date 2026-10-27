import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'profile_setup_widget.dart' show ProfileSetupWidget;
import 'package:flutter/material.dart';

class ProfileSetupModel extends FlutterFlowModel<ProfileSetupWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for nameField widget.
  FocusNode? nameFieldFocusNode;
  TextEditingController? nameFieldTextController;
  String? Function(BuildContext, String?)? nameFieldTextControllerValidator;
  // State field(s) for majorField widget.
  FocusNode? majorFieldFocusNode;
  TextEditingController? majorFieldTextController;
  String? Function(BuildContext, String?)? majorFieldTextControllerValidator;
  // State field(s) for schoolField widget.
  FocusNode? schoolFieldFocusNode;
  TextEditingController? schoolFieldTextController;
  String? Function(BuildContext, String?)? schoolFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nameFieldFocusNode?.dispose();
    nameFieldTextController?.dispose();

    majorFieldFocusNode?.dispose();
    majorFieldTextController?.dispose();

    schoolFieldFocusNode?.dispose();
    schoolFieldTextController?.dispose();
  }
}
