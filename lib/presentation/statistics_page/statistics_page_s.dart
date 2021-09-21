import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:eman/application/statistics_page/statistics_page_bloc.dart';
import 'package:eman/application/statistics_page/statistics_page_event.dart';
import 'package:eman/infrastructure/projects_page/projects_repository.dart';
import 'package:eman/infrastructure/projects_page/projects_page_service.dart';
import 'package:eman/presentation/statistics_page/statistics_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// ignore: must_be_immutable
class StatisticsPageS extends StatelessWidget {
  StatisticsPageS({Key? key}) : super(key: key);
  ProjectsRepository _pageRepository =
      ProjectsRepository(firestore: FirebaseFirestore.instance);
  late ProjectsPageService _pageService =
      ProjectsPageService(projectsPageRepository: _pageRepository);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => StatisticsPageBloc(
          StatisticsPageService: _pageService, context: context)
        ..add(LoadProjects()),
      child: StatisticsPage(),
    );
  }
}
