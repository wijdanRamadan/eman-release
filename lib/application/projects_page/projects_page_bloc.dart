import 'package:eman/application/projects_page/project_page_state.dart';
import 'package:eman/application/projects_page/projects_page_event.dart';
import 'package:eman/infrastructure/projects_page/projects_page_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProjectsPageBloc extends Bloc<ProjectsPageEvent, ProjectsPageState> {
  ProjectsPageBloc({required this.context, required this.projectsPageService})
      : super(Loading());
  final BuildContext context;
  final ProjectsPageService projectsPageService;

  @override
  Stream<ProjectsPageState> mapEventToState(ProjectsPageEvent event) async* {
    yield Loading();
    final info = await projectsPageService.getProjectsInofrmation(context);
    yield info.fold((l) => Failure(), (r) => Success(projects: r));
  }
}
