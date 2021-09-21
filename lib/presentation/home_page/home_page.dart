import 'package:back_button_interceptor/back_button_interceptor.dart';
import 'package:eman/presentation/qr_page/qr_page_s.dart';
import 'package:eman/presentation/service_page/service_page.dart';
import 'package:eman/presentation/statistics_page/statistics_page_s.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:eman/application/home_page/home_page_bloc.dart';
import 'package:eman/application/home_page/home_page_event.dart';
import 'package:eman/application/home_page/home_page_state.dart';
import 'package:eman/main.dart';
import 'package:eman/presentation/credentials_page/credentials_page.dart';
import 'package:eman/presentation/projects_page/projects_page_test.dart';
import 'package:eman/presentation/qr_page/qr_page.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomePageBloc _homePageBloc = HomePageBloc();
  int _selectedIndex = 0;

  late List<String> _tabTitle;
  void _onBottomNavItemTapped(int index) {
    _selectedIndex = index;
    if (index == 4)
      _homePageBloc.add(ShowQRPageRequested());
    else if (index == 3)
      _homePageBloc.add(ShowServicePageRequested());
    else if (index == 2)
      _homePageBloc.add(ShowCredentialsPageRequested());
    else if (index == 1)
      _homePageBloc.add(ShowStatisticsPageRequested());
    else
      _homePageBloc.add(ShowProjectsPageRequested());
    setState(() {
      _selectedIndex = index;
    });
  }

  bool myInterceptor(bool stopDefaultButtonEvent, RouteInfo info) {
    if (info.currentRoute(context)!.settings.name == '/') {
      if (_selectedIndex != 0) {
        _onBottomNavItemTapped(0);
        return true;
      }
    }
    return false;
  }

  @override
  void initState() {
    super.initState();
    BackButtonInterceptor.add(myInterceptor);
  }

  @override
  void dispose() {
    BackButtonInterceptor.remove(myInterceptor);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    late Locale _locale;
    _tabTitle = <String>[
      AppLocalizations.of(context)!.projects.toUpperCase(),
      AppLocalizations.of(context)!.data.toUpperCase(),
      AppLocalizations.of(context)!.credentials.toUpperCase(),
      AppLocalizations.of(context)!.service.toUpperCase(),
      AppLocalizations.of(context)!.qr.toUpperCase(),
    ];

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          _tabTitle.elementAt(_selectedIndex),
          style: TextStyle(
            fontFamily: 'Lexend Deca',
            color: Colors.white,
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: GestureDetector(
              onTap: () {
                _locale = Locale('en');
                MyApp.setLocale(context, _locale);
              },
              child: Container(
                width: 32.w,
                height: 32.w,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('icons/flags/png/gb.png',
                            package: 'country_icons'))),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: GestureDetector(
              onTap: () {
                _locale = Locale('cz');
                MyApp.setLocale(context, _locale);
              },
              child: Container(
                width: 32.w,
                height: 32.w,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('icons/flags/png/cz.png',
                            package: 'country_icons'))),
              ),
            ),
          ),
        ],
        centerTitle: false,
        elevation: 2,
      ),
      body: BlocBuilder<HomePageBloc, HomePageState>(
        bloc: _homePageBloc,
        builder: (context, state) {
          if (state is ShowCredentialsPage)
            return CredentialsPage();
          else if (state is ShowStatisticsPage)
            return StatisticsPageS();
          else if (state is ShowQRPage)
            return QrPageS();
          else if (state is ShowServicePage)
            return ServicePage();
          else
            return ProjectsPageTest();
        },
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
                top: BorderSide(color: Colors.grey.shade400),
                bottom: BorderSide(color: Colors.grey.shade200))),
        child: BottomNavigationBar(
          iconSize: 0,
          type: BottomNavigationBarType.fixed,
          selectedFontSize: 13.sp,
          unselectedFontSize: 11.sp,
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
          unselectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(null),
              label: AppLocalizations.of(context)!.projects.toUpperCase(),
            ),
            BottomNavigationBarItem(
              icon: Icon(null),
              label: AppLocalizations.of(context)!.data.toUpperCase(),
            ),
            BottomNavigationBarItem(
              icon: Icon(null),
              label: AppLocalizations.of(context)!.credentials.toUpperCase(),
            ),
            BottomNavigationBarItem(
              icon: Icon(null),
              label: AppLocalizations.of(context)!.service.toUpperCase(),
            ),
            BottomNavigationBarItem(
              icon: Icon(null),
              label: AppLocalizations.of(context)!.qr,
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onBottomNavItemTapped,
        ),
      ),
    );
  }
}
