import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:eman/application/projects_page/projects_page_bloc.dart';
import 'package:eman/application/projects_page/projects_page_event.dart';
import 'package:eman/infrastructure/projects_page/projects_repository.dart';
import 'package:eman/infrastructure/projects_page/projects_page_service.dart';
import 'package:eman/presentation/projects_page/projects_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// ignore: must_be_immutable
class ProjectsPageTest extends StatelessWidget {
  ProjectsPageTest({Key? key}) : super(key: key);
  ProjectsRepository _pageRepository =
      ProjectsRepository(firestore: FirebaseFirestore.instance);
  late ProjectsPageService _pageService =
      ProjectsPageService(projectsPageRepository: _pageRepository);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>
          ProjectsPageBloc(projectsPageService: _pageService, context: context)
            ..add(LoadProjects()),
      child: ProjectsPage(),
    );
  }
}
