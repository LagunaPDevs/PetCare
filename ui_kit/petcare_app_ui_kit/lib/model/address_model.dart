import 'dart:convert';

AddressModel adddressModelFromJson(String str) =>
    AddressModel.fromJson(json.decode(str));

String adddressModelToJson(AddressModel data) => json.encode(data.toJson());

class AddressModel {
  String street;
  String city;
  String state;
  String zip;

  AddressModel({
    required this.street,
    required this.city,
    required this.state,
    required this.zip,
  });

  factory AddressModel.fromJson(Map<String, dynamic> json) => AddressModel(
        street: json["street"],
        city: json["city"],
        state: json["state"],
        zip: json["zip"],
      );

  Map<String, dynamic> toJson() => {
        "street": street,
        "city": city,
        "state": state,
        "zip": zip,
      };
}
