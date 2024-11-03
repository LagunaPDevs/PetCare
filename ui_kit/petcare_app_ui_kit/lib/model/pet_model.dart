import 'dart:convert';

import 'package:petcare_app_ui_kit/model/category_model.dart';
import 'package:petcare_app_ui_kit/model/photo_url_model.dart';
import 'package:petcare_app_ui_kit/model/tag_model.dart';

PetModel petModelFromJson(String str) => PetModel.fromJson(json.decode(str));

String petModelToJson(PetModel data) => json.encode(data.toJson());

enum PetStatus { available, pending, sold }

class PetModel {
  int id;
  String name;
  CategoryModel category;
  List<PhotoUrlModel> photoUrls;
  TagModel tags;
  PetStatus status;

  PetModel({
    required this.id,
    required this.name,
    required this.category,
    required this.photoUrls,
    required this.tags,
    required this.status,
  });

  factory PetModel.fromJson(Map<String, dynamic> json) => PetModel(
        id: json["id"],
        name: json["name"],
        category: CategoryModel.fromJson(json["category"]),
        photoUrls: List<PhotoUrlModel>.from(
            json["photoUrls"].map((x) => PhotoUrlModel.fromJson(x))),
        tags: TagModel.fromJson(json["tags"]),
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "category": category.toJson(),
        "photoUrls": List<dynamic>.from(photoUrls.map((x) => x.toJson())),
        "tags": tags.toJson(),
        "status": status,
      };
}
