import 'package:dartz/dartz.dart';
import 'package:eman/domain/core/network_failure.dart';
import 'package:eman/domain/qr_page/qr_page_model.dart';
import 'package:eman/infrastructure/qe_page/qr_page_repository.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@injectable
class QrPageService {
  QrPageRepository qrPageRepository;

  QrPageService({required this.qrPageRepository});

  Future<Either<NetworkFailure, QrPageModel>> getAppLinks(
      BuildContext context) async {
    final repository = await qrPageRepository.getAppLinks(context);

    return repository.fold(
        (l) => Left(l), (r) => Right(QrPageModel.fromSnapshot(r)));
  }
}
