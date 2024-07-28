class NotesModel {
  String title;
  String description1;
  String? description2;
  DateTime createdAt;
  DateTime updatedAt;
  bool isFavorite;
  bool isSeeMore;

  NotesModel({
    required this.title,
    required this.description1,
    this.description2,
    required this.createdAt,
    required this.updatedAt,
    required this.isFavorite,
    required this.isSeeMore,
  });
}
