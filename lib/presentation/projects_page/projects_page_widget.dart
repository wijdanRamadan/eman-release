import 'package:eman/domain/projects_page/project_page_card_content.dart';
import 'package:eman/presentation/projects_page/projects_page_card.dart';
import 'package:eman/presentation/projects_page/search_feature/search_projects.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProjectsPageWidget extends StatelessWidget {
  ProjectsPageWidget({Key? key, required this.projects}) : super(key: key);

  final List<ProjectPageCardContentModel> projects;
  final TextEditingController searchFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Material(
                elevation: 3,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50.h,
                  child: Center(
                      child: GestureDetector(
                    onTap: () {
                      showSearch(
                          context: context,
                          delegate: SearchProjects(projects: projects));
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: Icon(Icons.search),
                          onPressed: () {
                            showSearch(
                                context: context,
                                delegate: SearchProjects(projects: projects));
                          },
                        ),
                        Text(
                          'search for project',
                        ),
                      ],
                    ),
                  )),
                ),
              )
            ],
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: projects.length,
              itemBuilder: (BuildContext context, index) => projectcard(
                  context: context,
                  pageCardContentModel: projects.elementAt(index),
                  model: projects.elementAt(index).referenceModel),
            ),
          ),
        ],
      );
}
