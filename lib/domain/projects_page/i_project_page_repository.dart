import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:eman/domain/core/network_failure.dart';

abstract class IProjectsPageRepository {
  Future<Either<NetworkFailure, QuerySnapshot<Map<String, dynamic>>>>
      getProjectsInformation(context);
}
