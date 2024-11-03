import 'dart:convert';

import 'package:petcare_app_ui_kit/model/address_model.dart';

CustomerModel customerModelFromJson(String str) =>
    CustomerModel.fromJson(json.decode(str));

String customerModelToJson(CustomerModel data) => json.encode(data.toJson());

class CustomerModel {
  int id;
  String username;
  AddressModel address;

  CustomerModel({
    required this.id,
    required this.username,
    required this.address,
  });

  factory CustomerModel.fromJson(Map<String, dynamic> json) => CustomerModel(
        id: json["id"],
        username: json["username"],
        address: AddressModel.fromJson(json["address"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "username": username,
        "address": address.toJson(),
      };
}
