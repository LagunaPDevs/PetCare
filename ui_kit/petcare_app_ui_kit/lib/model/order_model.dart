import 'dart:convert';

OrderModel orderModelFromJson(String str) =>
    OrderModel.fromJson(json.decode(str));

String orderModelToJson(OrderModel data) => json.encode(data.toJson());

enum OrderStatus { approved, delivered, placed }

class OrderModel {
  int id;
  int petId;
  int quantity;
  DateTime shipDate;
  OrderStatus status;
  bool complete;

  OrderModel({
    required this.id,
    required this.petId,
    required this.quantity,
    required this.shipDate,
    required this.status,
    required this.complete,
  });

  factory OrderModel.fromJson(Map<String, dynamic> json) => OrderModel(
        id: json["id"],
        petId: json["petId"],
        quantity: json["quantity"],
        shipDate: DateTime.parse(json["shipDate"]),
        status: json["status"],
        complete: json["complete"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "petId": petId,
        "quantity": quantity,
        "shipDate":
            "${shipDate.year.toString().padLeft(4, '0')}-${shipDate.month.toString().padLeft(2, '0')}-${shipDate.day.toString().padLeft(2, '0')}",
        "status": status,
        "complete": complete,
      };
}
