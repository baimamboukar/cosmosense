import 'dart:async';

import 'package:cosmosense/src/app/app_runner.dart';
import 'package:cosmosense/src/app/theme/cosmosense_theme.dart';
import 'package:cosmosense/src/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<void> bootstrap({required VoidCallback runner}) async {
  await CosmosenseRunner.preRunAction();
  runZonedGuarded(
    runner,
    (object, trace) {
      /// Save to Firebase CrashLytics
    },
  );
  await CosmosenseRunner.postRunAction();
}

class CosmoSense extends ConsumerStatefulWidget {
  const CosmoSense({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CosmoSenseState();
}

class _CosmoSenseState extends ConsumerState<CosmoSense> {
  late AppRouter appRouter;
  @override
  void initState() {
    appRouter = AppRouter();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter.config(),
      title: "CosmoSense",
      restorationScopeId: "cosmosense",
      debugShowCheckedModeBanner: false,
      theme: CosmosenseTheme.light,
      darkTheme: CosmosenseTheme.dark,
      themeMode: ThemeMode.system,
    );
  }
}
