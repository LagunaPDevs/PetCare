import 'package:flutter_dotenv/flutter_dotenv.dart';

class Server {
  static String get petStoreAPI => dotenv.env["API_URL"] ?? "";
  static String get apiKey => dotenv.env["API_KEY"] ?? "";
}
