import 'package:cosmosense/src/app/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<void> main() async {
  await bootstrap(
    runner: () => runApp(
      const ProviderScope(
        child: CosmoSense(),
      ),
    ),
  );
}
