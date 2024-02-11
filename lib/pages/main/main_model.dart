import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/side/side_widget.dart';
import 'main_widget.dart' show MainWidget;
import 'package:flutter/material.dart';

class MainModel extends FlutterFlowModel<MainWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for side component.
  late SideModel sideModel1;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered = false;
  // Stores action output result for [Backend Call - Update Row] action in Button widget.
  List<UserTokenRow>? apiResultcm0;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for side component.
  late SideModel sideModel2;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    sideModel1 = createModel(context, () => SideModel());
    sideModel2 = createModel(context, () => SideModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sideModel1.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    sideModel2.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
