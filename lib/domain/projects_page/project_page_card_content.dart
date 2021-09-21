import 'package:eman/domain/projects_page/project_reference_model.dart';

class ProjectPageCardContentModel {
  final String title;
  final String content;
  final String imageUri;
  final bool webProject;
  final bool mobileProject;
  final bool consulting;
  final String industry;
  final String cs;
  final ProjectReferenceModel referenceModel;
  ProjectPageCardContentModel(
      {required this.title,
      required this.content,
      required this.imageUri,
      required this.mobileProject,
      required this.webProject,
      required this.consulting,
      required this.industry,
      required this.cs,
      required this.referenceModel});

  static ProjectPageCardContentModel fromSnapShot(snap) {
    return ProjectPageCardContentModel(
        title: snap.data()['title'],
        content: snap.data()['content'],
        imageUri: snap.data()['image_uri'],
        mobileProject: snap.data()['mobile_project'],
        webProject: snap.data()['web_project'],
        consulting: snap.data()['consulting'],
        industry: snap.data()['industry'],
        cs: snap.data()['cs'],
        referenceModel:
            ProjectReferenceModel.fromSnapShot(snap.data()['reference']));
  }
}
