import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/side/side_widget.dart';
import 'create_new_widget.dart' show CreateNewWidget;
import 'package:flutter/material.dart';

class CreateNewModel extends FlutterFlowModel<CreateNewWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for side component.
  late SideModel sideModel1;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered = false;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (createInstance)] action in Button widget.
  ApiCallResponse? apiResultprp;
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
