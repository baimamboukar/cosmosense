import 'package:cosmosense/src/data/models/spacex_launch.dart';
import 'package:cosmosense/src/data/services/dio_config.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'launches_riverpod.g.dart';

@Riverpod(keepAlive: true)
class SpaceXLaunches extends _$SpaceXLaunches {
  Future<void> getSpaceXlaunches() async {
    final dio = ref.watch(dioProvider);
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(
      () async {
        final data = await dio.get('https://api.spacexdata.com/v4/launches/');
        return data.data
            .map<SpaceXlaunch>((launch) => SpaceXlaunch.fromJson(launch))
            .toList();
      },
    );
  }

  @override
  FutureOr<List<SpaceXlaunch>> build() async {
    return [];
  }
}
