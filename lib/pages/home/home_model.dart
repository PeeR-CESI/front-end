import '/flutter_flow/flutter_flow_util.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:flutter/material.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for screachtext widget.
  FocusNode? screachtextFocusNode;
  TextEditingController? screachtextController;
  String? Function(BuildContext, String?)? screachtextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    screachtextFocusNode?.dispose();
    screachtextController?.dispose();
  }
}