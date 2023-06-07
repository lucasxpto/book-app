import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BookCreateModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for book_title widget.
  TextEditingController? bookTitleController;
  String? Function(BuildContext, String?)? bookTitleControllerValidator;
  // State field(s) for book_author widget.
  TextEditingController? bookAuthorController;
  String? Function(BuildContext, String?)? bookAuthorControllerValidator;
  // State field(s) for book_category widget.
  String? bookCategoryValue;
  FormFieldController<String>? bookCategoryValueController;
  // State field(s) for description widget.
  TextEditingController? descriptionController;
  String? Function(BuildContext, String?)? descriptionControllerValidator;
  // State field(s) for book_status widget.
  bool? bookStatusValue;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    bookTitleController?.dispose();
    bookAuthorController?.dispose();
    descriptionController?.dispose();
  }

  /// Additional helper methods are added here.

}
