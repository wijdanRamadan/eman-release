class ProjectReferenceModel {
  final String client;
  final String project;
  final String segment;
  final String financialVolumeOfContract;
  final String realization;
  final String contactPerson;
  final String logoUri;
  final String description;

  ProjectReferenceModel(
      {required this.client,
      required this.project,
      required this.segment,
      required this.financialVolumeOfContract,
      required this.realization,
      required this.contactPerson,
      required this.logoUri,
      required this.description});

  static ProjectReferenceModel fromSnapShot(snap) {
    return ProjectReferenceModel(
        client: snap != null ? snap['client'] : 'test',
        project: snap != null ? snap['project'] : 'test',
        segment: snap != null ? snap['segment'] : 'test',
        financialVolumeOfContract:
            snap != null ? snap['financial_volume_of_contract'] : 'test',
        realization: snap != null ? snap['realization'] : 'test',
        contactPerson: snap != null ? snap['contact_person'] : 'test',
        logoUri: snap != null ? snap['logo_uri'] : 'test',
        description: snap != null ? snap['project_description'] : 'tests');
  }
}
