import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart' show BuildContext;

extension Router on BuildContext {
  StackRouter get autorouter => AutoRouter.of(this);
}
