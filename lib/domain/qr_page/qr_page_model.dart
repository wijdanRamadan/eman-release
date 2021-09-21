class QrPageModel {
  final String iosLink;
  final String androidLink;

  QrPageModel({
    required this.iosLink,
    required this.androidLink,
  });
  static QrPageModel fromSnapshot(snap) {
    return QrPageModel(
        iosLink: snap['ios_link'], androidLink: snap['android_link']);
  }
}
