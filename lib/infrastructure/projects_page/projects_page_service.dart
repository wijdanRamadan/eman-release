import 'package:dartz/dartz.dart';
import 'package:eman/domain/core/network_failure.dart';
import 'package:eman/domain/projects_page/project_page_card_content.dart';
import 'package:eman/infrastructure/projects_page/projects_repository.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@injectable
class ProjectsPageService {
  ProjectsRepository projectsPageRepository;

  ProjectsPageService({required this.projectsPageRepository});

  Future<Either<NetworkFailure, List<ProjectPageCardContentModel>>>
      getProjectsInofrmation(BuildContext context) async {
    final repository =
        await projectsPageRepository.getProjectsInformation(context);

    return repository.fold(
        (l) => Left(l),
        (r) => Right(r.docs
            .map((e) => ProjectPageCardContentModel.fromSnapShot(e))
            .toList()));
  }
}
