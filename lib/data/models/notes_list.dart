class NotesModel {
  String title;
  String description;
  DateTime createdAt;
  DateTime updatedAt;
  bool isFavorite;

  NotesModel({
    required this.title,
    required this.description,
    required this.createdAt,
    required this.updatedAt,
    required this.isFavorite,
  });
}
