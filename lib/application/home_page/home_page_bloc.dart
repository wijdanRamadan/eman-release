import 'package:eman/application/home_page/home_page_event.dart';
import 'package:eman/application/home_page/home_page_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  HomePageBloc() : super(ShowProjectsPage());

  @override
  Stream<HomePageState> mapEventToState(HomePageEvent event) async* {
    if (event is ShowStatisticsPageRequested)
      yield ShowStatisticsPage();
    else if (event is ShowCredentialsPageRequested)
      yield ShowCredentialsPage();
    else if (event is ShowQRPageRequested)
      yield ShowQRPage();
    else if (event is ShowServicePageRequested)
      yield ShowServicePage();
    else
      yield ShowProjectsPage();
  }
}
