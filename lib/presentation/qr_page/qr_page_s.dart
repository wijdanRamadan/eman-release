import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:eman/application/qr_page/qr_page_bloc.dart';
import 'package:eman/application/qr_page/qr_page_event.dart';
import 'package:eman/infrastructure/qe_page/qr_page_repository.dart';
import 'package:eman/infrastructure/qe_page/qr_page_service.dart';
import 'package:eman/presentation/qr_page/qr_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class QrPageS extends StatelessWidget {
  QrPageS({Key? key}) : super(key: key);
  QrPageRepository _repository =
      QrPageRepository(firestore: FirebaseFirestore.instance);
  late QrPageService _service = QrPageService(qrPageRepository: _repository);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>
          QrPageBloc(qrPageService: _service, context: context)
            ..add(LoadQrCode()),
      child: QRPage(),
    );
  }
}
