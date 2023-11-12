import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class CosmosenseRunner {
  /// A static method to be executed before the app runs.
  static Future<void> preRunAction() async {
    WidgetsFlutterBinding.ensureInitialized();
    await dotenv.load();
  }

  /// A static method to be executed while the app runs.
  static Future<void> runAction() async {}

  /// A static method to be executed after the app runs.
  static Future<void> postRunAction() async {}
}
