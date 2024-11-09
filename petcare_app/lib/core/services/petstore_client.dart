import 'dart:io';
import 'dart:convert';

// external libraries
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';

// project imports
import 'package:petcare_application/core/services/multipart_request.dart';

class PetStoreClient {
  PetStoreClient._();
  static final PetStoreClient instance = PetStoreClient._();

  String get _petStoreAPI => dotenv.env["API_URL"] ?? "";
  String get _apiKey => dotenv.env["API_KEY"] ?? "";
  String get _apiHost => dotenv.env["API_HOST"] ?? "";

  Map<String, String> get _headers => {
        "x-rapidapi-host": _apiHost,
        "x-rapidapi-key": _apiKey,
        "Content-Type": "application/json",
      };

  Future<String> deleteRequest({required String endpoint}) async {
    Uri uri = Uri.parse("$_petStoreAPI$endpoint");
    final response = await http.delete(uri, headers: _headers);
    return response.body;
  }

  Future<String> getRequest({required String endpoint}) async {
    Uri uri = Uri.parse("$_petStoreAPI$endpoint");
    final response = await http.get(uri, headers: _headers);
    return response.body;
  }

  Future<String> postRequest(
      {required String endpoint, required String body}) async {
    Uri uri = Uri.parse("$_petStoreAPI$endpoint");
    final response =
        await http.post(uri, headers: _headers, body: json.encode(body));
    return response.body;
  }

  Future<String> putRequest(
      {required String endpoint, required String body}) async {
    Uri uri = Uri.parse("$_petStoreAPI$endpoint");
    final response = await http.put(uri, headers: _headers, body: body);
    return response.body;
  }

  Future<http.StreamedResponse> uploadMultipartFile(
      {required String endpoint, required File file}) async {
    Uri uri = Uri.parse("$_petStoreAPI$endpoint");
    final request = MultipartRequest("POST", uri,
        onProgress: (bytes, totalBytes) {})
      ..fields["x-rapidapi-host"] = _apiHost
      ..fields["x-rapidapi-key"] = _apiKey
      ..fields["Content-Type"] = "multipart/form-data"
      ..files
          .add(http.MultipartFile("file", file.openRead(), file.lengthSync()));
    var response = await request.send();
    return response;
  }
}
