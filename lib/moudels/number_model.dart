class DataModel {
  final String sound;
  final String jpName;
  final String enName;
  final String? image;
  final String? numm;

  DataModel(
      {required this.sound,
      required this.jpName,
      required this.enName,
      this.image,
      this.numm});
}
