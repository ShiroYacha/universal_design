import 'package:flutter/material.dart';
import 'package:layout/layout.dart';

class UnversalDesignApp extends StatelessWidget {
  final Widget child;
  const UnversalDesignApp({
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Layout(child: child);
  }
}
