import 'dart:convert';

TagModel tagModelFromJson(String str) => TagModel.fromJson(json.decode(str));

String tagModelToJson(TagModel data) => json.encode(data.toJson());

class TagModel {
  int id;
  String name;

  TagModel({
    required this.id,
    required this.name,
  });

  factory TagModel.fromJson(Map<String, dynamic> json) => TagModel(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}
