import 'package:eman/domain/projects_page/project_page_card_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'categories_raw.dart';
import 'category.dart';
import 'pie_chart/pie_chart_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StatisticsPageWidget extends StatefulWidget {
  const StatisticsPageWidget({Key? key, required this.projects})
      : super(key: key);
  final List<ProjectPageCardContentModel> projects;

  @override
  _StatisticsPageStateWidget createState() => _StatisticsPageStateWidget();
}

class _StatisticsPageStateWidget extends State<StatisticsPageWidget> {
  late List<Category> projectCategories;
  late List<Category> industryCategories;
  bool _visible = false;
  var _projectsListItems = <Widget>[];
  var _industryListItems = <Widget>[];
  final GlobalKey<AnimatedListState> _projectsListKey = GlobalKey();
  final GlobalKey<AnimatedListState> _industryListKey = GlobalKey();

  int webProjectNum = 0;
  int mobileProjectNum = 0;
  int consultingNum = 0;
  int automotiveNum = 0;
  int energyNum = 0;
  int financeNum = 0;

  @override
  void initState() {
    for (ProjectPageCardContentModel model in widget.projects) {
      if (model.webProject == true) webProjectNum++;
      if (model.mobileProject == true) mobileProjectNum++;
      if (model.consulting == true) consultingNum++;
      if (model.industry == 'energy')
        energyNum++;
      else if (model.industry == 'otomotive') {
        automotiveNum++;
      } else {
        financeNum++;
      }
    }
    Future.delayed(Duration(milliseconds: 200), () {
      setState(() {
        _visible = true;
      });
    });

    super.initState();
    Future.delayed(Duration(milliseconds: 400), () {
      _loadItems();
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    projectCategories = [
      Category(
        name: AppLocalizations.of(context)!.mobileProjects,
        amount: mobileProjectNum,
        color: Color.fromRGBO(117, 230, 218, 1),
      ),
      Category(
        name: AppLocalizations.of(context)!.webProjects,
        amount: webProjectNum,
        color: Color.fromRGBO(24, 154, 180, 1),
      ),
      Category(
          name: AppLocalizations.of(context)!.consulting,
          amount: consultingNum,
          color: Color.fromRGBO(5, 68, 94, 1))
    ];

    industryCategories = [
      Category(
        name: AppLocalizations.of(context)!.energy,
        amount: energyNum,
        color: Color.fromRGBO(160, 231, 229, 1),
      ),
      Category(
        name: AppLocalizations.of(context)!.otomotive,
        amount: automotiveNum,
        color: Color.fromRGBO(255, 174, 188, 1),
      ),
      Category(
          name: AppLocalizations.of(context)!.finance,
          amount: financeNum,
          color: Color.fromRGBO(180, 248, 200, 1))
    ];
    return SingleChildScrollView(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(AppLocalizations.of(context)!.totalProjects,
                  style: Theme.of(context)
                      .textTheme
                      .headline2!
                      .copyWith(fontSize: 28.sp)),
            ),
            SizedBox(
              height: 20.0.h,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: AnimatedOpacity(
                  opacity: _visible ? 1.0 : 0.0,
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeInOutSine,
                  child: Container(
                      height: 150.h,
                      width: 150.h,
                      child: PieChartView(
                        categories: projectCategories,
                      ))),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: AnimatedList(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                key: _projectsListKey,
                initialItemCount: _projectsListItems.length,
                itemBuilder: (context, index, animation) => SlideTransition(
                  position: CurvedAnimation(
                    curve: Curves.easeOut,
                    parent: animation,
                  ).drive((Tween<Offset>(
                    begin: Offset(1, 0),
                    end: Offset(0, 0),
                  ))),
                  child: _projectsListItems[index],
                ),
              ),
            ),
            SizedBox(
              height: 20.0.h,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: AnimatedOpacity(
                  opacity: _visible ? 1.0 : 0.0,
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeInOutSine,
                  child: Container(
                      height: 150.h,
                      width: 150.h,
                      child: PieChartView(
                        categories: industryCategories,
                      ))),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: AnimatedList(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                key: _industryListKey,
                initialItemCount: _projectsListItems.length,
                itemBuilder: (context, index, animation) => SlideTransition(
                  position: CurvedAnimation(
                    curve: Curves.easeOut,
                    parent: animation,
                  ).drive((Tween<Offset>(
                    begin: Offset(1, 0),
                    end: Offset(0, 0),
                  ))),
                  child: _industryListItems[index],
                ),
              ),
            ),
          ]),
    );
  }

  void _loadItems() {
    List<Widget> projectsFetchedList = [];
    List<Widget> industryFetchedList = [];
    for (Category category in industryCategories) {
      industryFetchedList.add(
        SizedBox(
          height: 20.0.h,
        ),
      );
      industryFetchedList.add(CategoriesRow(
          category: category.name,
          projectsNumber: category.amount.toString(),
          color: category.color));
    }

    for (Category category in projectCategories) {
      projectsFetchedList.add(
        SizedBox(
          height: 20.0.h,
        ),
      );
      projectsFetchedList.add(CategoriesRow(
          category: category.name,
          projectsNumber: category.amount.toString(),
          color: category.color));
    }

    var future = Future(() {});
    for (var i = 0; i < projectsFetchedList.length; i++) {
      future = future.then((_) {
        return Future.delayed(Duration(milliseconds: 100), () {
          _projectsListItems.add(projectsFetchedList[i]);
          _projectsListKey.currentState
              ?.insertItem(_projectsListItems.length - 1);
        });
      });
    }

    for (var i = 0; i < industryFetchedList.length; i++) {
      future = future.then((_) {
        return Future.delayed(Duration(milliseconds: 100), () {
          _industryListItems.add(industryFetchedList[i]);
          _industryListKey.currentState
              ?.insertItem(_industryListItems.length - 1);
        });
      });
    }
  }
}
