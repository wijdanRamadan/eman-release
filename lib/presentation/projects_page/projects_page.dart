import 'package:eman/application/projects_page/project_page_state.dart';
import 'package:eman/application/projects_page/projects_page_bloc.dart';
import 'package:eman/presentation/projects_page/projects_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProjectsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProjectsPageBloc, ProjectsPageState>(
      builder: (context, state) {
        if (state is Loading)
          return const Center(child: CircularProgressIndicator());
        else if (state is Success) {
          return ProjectsPageWidget(projects: state.projects);
        }
        return Container(
          color: Colors.red,
        );
      },
    );
  }
}
