import 'package:eman/domain/qr_page/qr_page_model.dart';

abstract class QrPageState {}

class Loading extends QrPageState {}

class Success extends QrPageState {
  final QrPageModel model;
  Success({required this.model});
}

class Failure extends QrPageState {}
