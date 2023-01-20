import 'package:cosmosense/src/data/models/spacex_launch.dart';
import 'package:cosmosense/src/utils/palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FadeAnimatedList extends ConsumerStatefulWidget {
  final List<SpaceXlaunch> launches;
  const FadeAnimatedList({
    super.key,
    required this.launches,
  });
  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _FadeAnimatedListState();
}

class _FadeAnimatedListState extends ConsumerState<FadeAnimatedList> {
  final scrollController = ScrollController();

  void onListen() {
    setState(() {});
  }

  @override
  void initState() {
    widget.launches.addAll(List.from(widget.launches));
    scrollController.addListener(onListen);
    super.initState();
  }

  @override
  void dispose() {
    scrollController.removeListener(onListen);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const itemSize = 150.0;
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          const heightFactor = 0.6;
          final launch = widget.launches[index];
          final itemPositionOffset = index * itemSize * heightFactor;
          final difference = scrollController.offset - itemPositionOffset;
          final percent = 1.0 - (difference / (itemSize * heightFactor));
          double opacity = percent;
          double scale = percent;
          if (opacity > 1.0) opacity = 1.0;
          if (opacity < 0.0) opacity = 0.0;
          if (percent > 1.0) scale = 1.0;

          return Align(
            heightFactor: heightFactor,
            child: Opacity(
              opacity: opacity,
              child: Transform(
                alignment: Alignment.center,
                transform: Matrix4.identity()..scale(scale, 1.0),
                child: Card(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                    ),
                  ),
                  color: Palette.primary,
                  child: SizedBox(
                    height: itemSize,
                    child: Row(
                      children: <Widget>[
                        const Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(15.0),
                          ),
                        ),
                        Image.network(launch.links!.patch!.small ??
                            "https://images2.imgbox.com/6c/cb/na1tzhHs_o.png"),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
        childCount: widget.launches.length,
      ),
    );
  }
}
