import 'package:eman/domain/projects_page/project_page_card_content.dart';

abstract class StatisticsPageState {}

class Loading extends StatisticsPageState {}

class Success extends StatisticsPageState {
  final List<ProjectPageCardContentModel> projects;
  Success({required this.projects});
}

//TODO
class Failure extends StatisticsPageState {}
