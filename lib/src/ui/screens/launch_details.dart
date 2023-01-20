import 'package:cosmosense/src/data/models/spacex_launch.dart';
import 'package:cosmosense/src/state/riverpods/rocket_riverpod.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LaunchDetails extends ConsumerStatefulWidget {
  final SpaceXlaunch launch;
  const LaunchDetails({required this.launch, super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LaunchDetailsState();
}

class _LaunchDetailsState extends ConsumerState<LaunchDetails> {
  @override
  Widget build(BuildContext context) {
    final rocketData = ref.watch(
        rocketRiverpod(widget.launch.rocket ?? "5e9d0d95eda69955f709d1eb"));
    return Scaffold(
      body: rocketData.when(
        data: (data) {
          return null;
        },
        loading: () => const Center(
          child: CupertinoActivityIndicator(),
        ),
        error: (error, stack) => Text(
          error.toString(),
        ),
      ),
    );
  }
}
