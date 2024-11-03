class PhotoUrlModel {
  bool wrapped;
  String name;

  PhotoUrlModel({
    required this.wrapped,
    required this.name,
  });

  factory PhotoUrlModel.fromJson(Map<String, dynamic> json) => PhotoUrlModel(
        wrapped: json["wrapped"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "wrapped": wrapped,
        "name": name,
      };
}
