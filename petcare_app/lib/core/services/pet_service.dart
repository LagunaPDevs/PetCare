import 'dart:io';
import 'dart:convert';

// project imports
import 'package:petcare_application/core/services/petstore_client.dart';

// ui_kit
import 'package:petcare_app_ui_kit/model/pet_model.dart';

class PetService {
  PetService._();
  static final PetService instance = PetService._();

  final String _petEndpoint = "/pet";
  final String _tagsEndpoint = "/findByTags";
  final String _statusEndpoint = "/findByStatus2";
  final String _uploadImgEndpoint = "/uploadImage";

  Future<PetModel?> addPet(PetModel pet) async {
    try {
      final response = await PetStoreClient.instance
          .postRequest(endpoint: _petEndpoint, body: json.encode(pet));
      return json.decode(response);
    } catch (e) {
      return null;
    }
  }

  Future<PetModel?> deletePet(String id) async {
    try {
      final response = await PetStoreClient.instance
          .deleteRequest(endpoint: "$_petEndpoint/$id");
      return json.decode(response);
    } catch (e) {
      return null;
    }
  }

  Future<List<PetModel>> findByTags({required List<String> tagList}) async {
    try {
      String tags = "";
      for (int i = 0; i < tagList.length; i++) {
        tags += tags[i];
        if (i + 1 < tagList.length) {
          tags += "&";
        }
      }
      final response = await PetStoreClient.instance
          .getRequest(endpoint: "$_petEndpoint$_tagsEndpoint?tags=$tags");
      return json.decode(response);
    } catch (e) {
      return [];
    }
  }

  Future<List<PetModel>> findByStatus(PetStatus status) async {
    try {
      final response = await PetStoreClient.instance.getRequest(
          endpoint:
              "$_petEndpoint$_statusEndpoint?status=%5B%0A%20%20%22$status%22%0A%5D");
      return json.decode(response);
    } catch (e) {
      return [];
    }
  }

  Future<PetModel?> getPetById(String id) async {
    try {
      final response = await PetStoreClient.instance
          .getRequest(endpoint: "$_petEndpoint/$id");
      return json.decode(response);
    } catch (e) {
      return null;
    }
  }

  Future<PetModel?> updatePet(PetModel pet) async {
    try {
      final response = await PetStoreClient.instance
          .putRequest(endpoint: _petEndpoint, body: json.encode(pet));
      return json.decode(response);
    } catch (e) {
      return null;
    }
  }

  Future<int?> uploadPetImage(
      {required String petId, required File file}) async {
    try {
      final response = await PetStoreClient.instance.uploadMultipartFile(
          endpoint: "$_petEndpoint/$petId$_uploadImgEndpoint", file: file);
      return response.statusCode;
    } catch (e) {
      return null;
    }
  }
}
