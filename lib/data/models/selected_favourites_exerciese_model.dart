class SelectedFavouriteExcercise {
  SelectedFavouriteExcercise({required this.id, required this.name});
  final String id;
  final String name;

  factory SelectedFavouriteExcercise.fromJson(Map<String, dynamic> json) {
    return SelectedFavouriteExcercise(id: json['id'], name: json['name']);
  }
}
