import 'dart:convert';

// project import
import 'package:petcare_application/core/services/petstore_client.dart';

// ui_kit
import 'package:petcare_app_ui_kit/model/user_model.dart';

class UserService {
  UserService._();

  static final UserService instance = UserService._();

  final String _userEndpoint = "/user";
  final String _loginEndpoint = "/login";
  final String _logoutEnpoint = "/logout";
  final String _createWithListEndpoint = "/createWithList";
  final String _createWithArrayEndpoint = "/createWithArray";

  Future<UserModel?> createUser({required UserModel user}) async {
    final response = await PetStoreClient.instance
        .postRequest(endpoint: _userEndpoint, body: json.encode(user));
    return json.decode(response);
  }

  Future<List<UserModel>> createUsersWithArray(
      {required List<UserModel> userList}) async {
    final response = await PetStoreClient.instance.postRequest(
        endpoint: "$_userEndpoint$_createWithArrayEndpoint",
        body: json.encode(userList));
    return json.decode(response);
  }

  Future<List<UserModel>> createUsersWithList(
      {required List<UserModel> userList}) async {
    final response = await PetStoreClient.instance.postRequest(
        endpoint: "$_userEndpoint$_createWithListEndpoint",
        body: json.encode(userList));
    return json.decode(response);
  }

  Future<UserModel?> deleteUser({required String username}) async {
    final response = await PetStoreClient.instance
        .deleteRequest(endpoint: "$_userEndpoint/$username");
    return json.decode(response);
  }

  Future<UserModel?> getUserByName(String name) async {
    final response = await PetStoreClient.instance
        .getRequest(endpoint: "$_userEndpoint/$name");
    return json.decode(response);
  }

  Future<UserModel?> login(
      {required String username, required String password}) async {
    final response = await PetStoreClient.instance.getRequest(
        endpoint:
            "$_userEndpoint$_loginEndpoint?username=$username&password=$password");
    return json.decode(response);
  }

  Future<dynamic> logout() async {
    final response = await PetStoreClient.instance
        .getRequest(endpoint: "$_userEndpoint$_logoutEnpoint");
    return json.decode(response);
  }

  Future<UserModel?> updateUser({required UserModel user}) async {
    final response = await PetStoreClient.instance.putRequest(
        endpoint: "$_userEndpoint/${user.username}", body: json.encode(user));
    return json.decode(response);
  }
}
