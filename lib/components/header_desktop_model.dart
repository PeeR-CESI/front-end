import '/flutter_flow/flutter_flow_util.dart';
import 'header_desktop_widget.dart' show HeaderDesktopWidget;
import 'package:flutter/material.dart';

class HeaderDesktopModel extends FlutterFlowModel<HeaderDesktopWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for screachtext widget.
  FocusNode? screachtextFocusNode;
  TextEditingController? screachtextTextController;
  String? Function(BuildContext, String?)? screachtextTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    screachtextFocusNode?.dispose();
    screachtextTextController?.dispose();
  }
}
