import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:eman/constants.dart';

import 'package:eman/domain/core/network_failure.dart';
import 'package:eman/domain/qr_page/i_qr_page_repository.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: QrPageRepository)
class QrPageRepository implements IQrPageRepository {
  FirebaseFirestore firestore;
  QrPageRepository({
    required this.firestore,
  });

  @override
  Future<Either<NetworkFailure, DocumentSnapshot>> getAppLinks(context) async {
    final DocumentSnapshot snapshot =
        await firestore.collection(APP_LINKS).doc(APP_LINKS).get();

    return right(snapshot);
  }
}
