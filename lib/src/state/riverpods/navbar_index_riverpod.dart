import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'navbar_index_riverpod.g.dart';

@Riverpod(keepAlive: true)
class NavigationIndex extends _$NavigationIndex {
  @override
  int build() => 0;

  set navigation(int index) => state = index;
}
