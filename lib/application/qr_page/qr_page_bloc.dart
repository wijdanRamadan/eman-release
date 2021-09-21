import 'package:eman/application/qr_page/qr_page_event.dart';
import 'package:eman/application/qr_page/qr_page_state.dart';
import 'package:eman/infrastructure/qe_page/qr_page_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class QrPageBloc extends Bloc<QrPageEvent, QrPageState> {
  QrPageBloc({required this.context, required this.qrPageService})
      : super(Loading());
  final BuildContext context;
  final QrPageService qrPageService;

  @override
  Stream<QrPageState> mapEventToState(QrPageEvent event) async* {
    yield Loading();
    final info = await qrPageService.getAppLinks(context);
    yield info.fold((l) => Failure(), (r) => Success(model: r));
  }
}
