import 'package:cosmosense/src/data/models/spacex_launch.dart';
import 'package:cosmosense/src/data/services/dio_config.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'launches_riverpod.g.dart';

@Riverpod(keepAlive: true)
class SpaceXLaunches extends _$SpaceXLaunches {
  /// Fetches SpaceX launches from the API and updates the state of the provider.
  ///
  /// Uses the [dioProvider] to make a GET request to the SpaceX API and converts the response data
  /// to a list of [SpaceXlaunch] objects using the [SpaceXlaunch.fromJson] factory method.
  /// The resulting list is set as the new state of the [SpaceXlaunch] provider.
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
    try {
      final dio = ref.watch(dioProvider);
      state = const AsyncValue.loading();
      final data = await dio.get('https://api.spacexdata.com/v4/launches/');
      return data.data
          .map<SpaceXlaunch>((launch) => SpaceXlaunch.fromJson(launch))
          .toList();
    } catch (ex) {
      return [];
    } finally {}
  }
}
