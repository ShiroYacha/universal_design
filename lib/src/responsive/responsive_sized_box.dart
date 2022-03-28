import 'package:flutter/material.dart';
import 'package:flutter_design/flutter_design.dart';
import 'package:layout/layout.dart';

part 'responsive_sized_box.design.dart';

/// A [SizedBox] that responsively adapt it's width based on the
/// screen factor.
///
/// On smaller screens, it stretches
///
/// |           |
/// |  stretch  |
/// |<--------->|
/// |           |
/// |           |
///
/// On bigger screens, it centers with a fixed width
///
/// |                 |
/// |    max width    |
/// |   |<------->|   |
/// |                 |
/// |                 |
///
@Design(
  subtitle: '''
A `SizedBox` that responsively adapt it's `width` based on the
screen factor.''',
  description: '''
It is very common on smaller screens to stretch the content horizontally. However 
on bigger screens, it is better to center its content with a fixed max width.
''',
)
class ResponsiveSizedBox extends StatelessWidget {
  const ResponsiveSizedBox({
    required this.child,
    this.widthWhenConstrained = 400.0,
    this.paddingWhenConstrained = const EdgeInsets.all(20),
    this.centeredWhenConstrained = true,
    this.breakpoint = LayoutBreakpoint.sm,
    Key? key,
  }) : super(key: key);

  /// The child widget
  @DesignField(
      parameter: DesignParamWidgetPlaceholder(
    size: Size.infinite,
  ))
  final Widget child;

  /// The maximum size of the child widget when constrained
  final double widthWhenConstrained;

  /// The padding of the child widget when constrained
  final EdgeInsets paddingWhenConstrained;

  /// Indicates if the child should be wrapped in a [Center] when constrained
  final bool centeredWhenConstrained;

  /// The breakpoint from which the child widget gets constrained
  final LayoutBreakpoint breakpoint;

  @override
  Widget build(BuildContext context) {
    final bool constrained = context.breakpoint >= breakpoint;
    final content = Padding(
      padding: constrained ? paddingWhenConstrained : EdgeInsets.zero,
      child: SizedBox(
        width: constrained ? widthWhenConstrained : null,
        child: child,
      ),
    );
    return centeredWhenConstrained ? Center(child: content) : content;
  }
}
