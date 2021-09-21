import 'package:eman/domain/projects_page/project_page_card_content.dart';

abstract class ProjectsPageState {}

class Loading extends ProjectsPageState {}

class Success extends ProjectsPageState {
  final List<ProjectPageCardContentModel> projects;
  Success({required this.projects});
}

//TODO
class Failure extends ProjectsPageState {}
