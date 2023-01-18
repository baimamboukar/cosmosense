import 'package:cosmosense/src/data/models/planet.dart';
import 'package:cosmosense/src/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';

import 'package:circle_wheel_scroll/circle_wheel_scroll_view.dart' as wheel;

class CircularListPage extends StatefulWidget {
  const CircularListPage({super.key});

  @override
  _CircularListPageState createState() => _CircularListPageState();
}

class _CircularListPageState extends State<CircularListPage> {
  late wheel.FixedExtentScrollController _controller;

  _listListener() {
    setState(() {});
  }

  @override
  void initState() {
    _controller = wheel.FixedExtentScrollController();
    _controller.addListener(_listListener);
    super.initState();
  }

  @override
  void dispose() {
    _controller.removeListener(_listListener);
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return wheel.CircleListScrollView.useDelegate(
      onSelectedItemChanged: (index) {
        setState(() {});
      },
      childDelegate: wheel.CircleListChildBuilderDelegate(
        builder: (context, index) {
          int currentIndex = 0;
          try {
            currentIndex = _controller.selectedItem;
          } catch (_) {}
          final num resizeFactor =
              (1 - (((currentIndex - index).abs() * 0.3).clamp(0.0, 1.0)));
          return CircleListItem(
            resizeFactor: resizeFactor as double,
            character: planets[index],
          );
        },
        childCount: planets.length,
      ),
      physics: const wheel.CircleFixedExtentScrollPhysics(),
      controller: _controller,
      axis: Axis.vertical,
      itemExtent: 100,
      radius: MediaQuery.of(context).size.width * .5,
    );
  }
}
