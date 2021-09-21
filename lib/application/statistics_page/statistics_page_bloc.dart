import 'package:eman/application/statistics_page/statistics_page_event.dart';
import 'package:eman/application/statistics_page/statistics_page_state.dart';
import 'package:eman/infrastructure/projects_page/projects_page_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StatisticsPageBloc
    extends Bloc<StatisticsPageEvent, StatisticsPageState> {
  StatisticsPageBloc(
      {required this.context, required this.StatisticsPageService})
      : super(Loading());
  final BuildContext context;
  final ProjectsPageService StatisticsPageService;

  @override
  Stream<StatisticsPageState> mapEventToState(
      StatisticsPageEvent event) async* {
    yield Loading();
    final info = await StatisticsPageService.getProjectsInofrmation(context);
    yield info.fold((l) => Failure(), (r) => Success(projects: r));
  }
}
