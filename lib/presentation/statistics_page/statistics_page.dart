import 'package:eman/application/statistics_page/statistics_page_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:eman/application/statistics_page/statistics_page_bloc.dart';

import 'statistics_page_widget.dart';

class StatisticsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StatisticsPageBloc, StatisticsPageState>(
      builder: (context, state) {
        if (state is Loading)
          return const Center(child: CircularProgressIndicator());
        else if (state is Success) {
          return StatisticsPageWidget(projects: state.projects);
        }
        return Container(
          color: Colors.red,
        );
      },
    );
  }
}
