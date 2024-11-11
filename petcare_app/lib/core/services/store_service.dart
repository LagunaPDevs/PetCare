import 'dart:convert';

// project imports
import 'package:petcare_application/core/services/petstore_client.dart';

// ui_kit
import 'package:petcare_app_ui_kit/model/order_model.dart';

class StoreService {
  StoreService._();
  static final StoreService instance = StoreService._();

  final String _storeEndpoint = "/store";
  final String _orderEndpoint = "/order";
  final String _inventoryEndpoint = "/inventory";

  Future<OrderModel?> deleteOrder(String id) async {
    final response = await PetStoreClient.instance
        .deleteRequest(endpoint: "$_storeEndpoint$_orderEndpoint/$id");
    return json.decode(response);
  }

  Future<int?> getInvetory() async {
    final response = await PetStoreClient.instance
        .getRequest(endpoint: "$_storeEndpoint$_inventoryEndpoint");
    return json.decode(response);
  }

  Future<OrderModel?> getOrderById(String id) async {
    final response = await PetStoreClient.instance
        .getRequest(endpoint: "$_storeEndpoint$_orderEndpoint/$id");
    return json.decode(response);
  }

  Future<OrderModel?> placeOrder(OrderModel order) async {
    final response = await PetStoreClient.instance.postRequest(
        endpoint: "$_storeEndpoint$_orderEndpoint", body: json.encode(order));
    return json.decode(response);
  }
}
