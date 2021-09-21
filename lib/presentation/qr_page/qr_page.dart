import 'package:eman/application/qr_page/qr_page_bloc.dart';
import 'package:eman/application/qr_page/qr_page_state.dart';
import 'package:eman/presentation/qr_page/qr_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class QRPage extends StatelessWidget {
  const QRPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QrPageBloc, QrPageState>(
      builder: (context, state) {
        if (state is Loading)
          return const Center(child: CircularProgressIndicator());
        else if (state is Success) {
          return QRPageWidget(model: state.model);
        }
        return Container(
          color: Colors.red,
        );
      },
    );
  }
}
