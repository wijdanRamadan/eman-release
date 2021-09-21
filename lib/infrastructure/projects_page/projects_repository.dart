import 'package:eman/constants.dart';
import 'package:eman/domain/core/network_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:eman/domain/projects_page/i_project_page_repository.dart';
import 'package:eman/main.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: ProjectsRepository)
class ProjectsRepository implements IProjectsPageRepository {
  FirebaseFirestore firestore;

  ProjectsRepository({required this.firestore});
  @override
  Future<Either<NetworkFailure, QuerySnapshot<Map<String, dynamic>>>>
      getProjectsInformation(context) async {
    String collection;
    if (MyApp.getLocal(context) == Locale('en'))
      collection = COLLECTION_EN;
    else
      collection = COLLECTION_CS;
    final QuerySnapshot<Map<String, dynamic>> querySnapshot =
        await firestore.collection(collection).get();
    return right(querySnapshot);
  }
}
