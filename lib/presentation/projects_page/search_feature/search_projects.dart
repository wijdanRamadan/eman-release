import 'package:eman/domain/projects_page/project_page_card_content.dart';
import 'package:eman/domain/projects_page/project_reference_model.dart';
import 'package:eman/presentation/projects_page/projects_page_card.dart';
import 'package:flutter/material.dart';

class SearchProjects extends SearchDelegate<String> {
  final List<ProjectPageCardContentModel> projects;
  SearchProjects({required this.projects});

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, query);
        },
        icon: Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    final List<ProjectPageCardContentModel> result = projects
        .where((project) =>
            project.title.toLowerCase().contains(query.toLowerCase()) ||
            project.content.toLowerCase().contains(query.toLowerCase()) ||
            project.industry.toLowerCase().contains(query.toLowerCase()))
        .toList();
    return ListView.builder(
        shrinkWrap: true,
        itemCount: result.length,
        itemBuilder: (BuildContext context, index) => projectcard(
            context: context,
            pageCardContentModel: result.elementAt(index),
            model: ProjectReferenceModel(
                client: '',
                project: '',
                segment: '',
                financialVolumeOfContract: '',
                realization: '',
                contactPerson: 'contactPerson',
                logoUri: 'logoUri',
                description: 'description')));
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: projects.length,
      itemBuilder: (BuildContext context, index) => projectcard(
          context: context,
          pageCardContentModel: projects.elementAt(index),
          model: ProjectReferenceModel(
              client: '',
              project: '',
              segment: '',
              financialVolumeOfContract: '',
              realization: '',
              contactPerson: 'contactPerson',
              logoUri: 'logoUri',
              description: 'description')),
    );
  }
}
