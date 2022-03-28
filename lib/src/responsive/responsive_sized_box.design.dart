// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'responsive_sized_box.dart';

// **************************************************************************
// DesignGenerator
// **************************************************************************

// ignore_for_file: type=lint
// ignore_for_file: unused_element

class _$ResponsiveSizedBoxParamBuilder extends ComponentParamBuilder {
  final dynamic child;
  final dynamic widthWhenConstrained;
  final dynamic paddingWhenConstrained;
  final dynamic centeredWhenConstrained;
  final dynamic breakpoint;

  const _$ResponsiveSizedBoxParamBuilder({
    required this.child,
    this.widthWhenConstrained,
    this.paddingWhenConstrained,
    this.centeredWhenConstrained,
    this.breakpoint,
  }) : super();
}

final generatedSrcResponsiveResponsiveSizedBoxResponsiveSizedBoxPage =
    ViewerDocumentPage(
  id: 'responsiveSizedBox',
  namespace: ['src', 'responsive', 'responsive_sized_box'],
  title: 'ResponsiveSizedBox',
  subtitle: '''
A `SizedBox` that responsively adapt it's `width` based on the
screen factor.
''',
  description: '''
It is very common on smaller screens to stretch the content horizontally. However 
on bigger screens, it is better to center its content with a fixed max width.

''',
  sections: [
    ViewerSectionUnion.component(
      id: 'component_responsive_sized_box',
      title: 'ResponsiveSizedBox()',
      ctorName: 'ResponsiveSizedBox',
      designLink: null,
      builder: ViewerWidgetBuilder(
        build: (context, factory) => ResponsiveSizedBox(
          child: factory.build(context, 'child'),
          widthWhenConstrained: factory.build(context, 'widthWhenConstrained'),
          paddingWhenConstrained:
              factory.build(context, 'paddingWhenConstrained'),
          centeredWhenConstrained:
              factory.build(context, 'centeredWhenConstrained'),
          breakpoint: factory.build(context, 'breakpoint'),
        ),
        fieldMetaDataset: const [
          FieldMetaData(
            name: 'child',
            type: Widget,
            typeName: 'Widget',
            isNullable: false,
            isRequired: true,
            isNamed: true,
            defaultValue: null,
            defaultValueCode: "null",
            viewerInitSelectorParam: DesignParamWidgetPlaceholder(
              size: Size.infinite,
            ),
            viewerInitValueCode:
                '''DesignParamWidgetPlaceholder(size: Size.infinite, )''',
            documentation: '''/// The child widget''',
          ),
          FieldMetaData(
            name: 'widthWhenConstrained',
            type: double,
            typeName: 'double',
            isNullable: false,
            isRequired: false,
            isNamed: true,
            defaultValue: 400.0,
            defaultValueCode: "400.0",
            viewerInitValueCode: "400.0",
            documentation:
                '''/// The maximum size of the child widget when constrained''',
          ),
          FieldMetaData(
            name: 'paddingWhenConstrained',
            type: EdgeInsets,
            typeName: 'EdgeInsets',
            isNullable: false,
            isRequired: false,
            isNamed: true,
            defaultValue: const EdgeInsets.all(20),
            defaultValueCode: "const EdgeInsets.all(20)",
            viewerInitValueCode: "const EdgeInsets.all(20)",
            documentation:
                '''/// The padding of the child widget when constrained''',
          ),
          FieldMetaData(
            name: 'centeredWhenConstrained',
            type: bool,
            typeName: 'bool',
            isNullable: false,
            isRequired: false,
            isNamed: true,
            defaultValue: true,
            defaultValueCode: "true",
            viewerInitValueCode: "true",
            documentation:
                '''/// Indicates if the child should be wrapped in a [Center] when constrained''',
          ),
          FieldMetaData(
            name: 'breakpoint',
            type: LayoutBreakpoint,
            typeName: 'LayoutBreakpoint',
            isNullable: false,
            isRequired: false,
            isNamed: true,
            defaultValue: LayoutBreakpoint.sm,
            defaultValueCode: "LayoutBreakpoint.sm",
            viewerInitValueCode: "LayoutBreakpoint.sm",
            documentation:
                '''/// The breakpoint from which the child widget gets constrained''',
          ),
        ],
      ),
      sourceCode: const ViewerSourceCode(
          location:
              'package:universal_design/src/responsive/responsive_sized_box.dart',
          code: '''
/// Built from the following function 
(context, factory) => ResponsiveSizedBox(child: factory.build(context, 'child'),widthWhenConstrained: factory.build(context, 'widthWhenConstrained'),paddingWhenConstrained: factory.build(context, 'paddingWhenConstrained'),centeredWhenConstrained: factory.build(context, 'centeredWhenConstrained'),breakpoint: factory.build(context, 'breakpoint'),)

/// Widget
class ResponsiveSizedBox extends StatelessWidget {
  const ResponsiveSizedBox(
      {required this.child,
      this.widthWhenConstrained = 400.0,
      this.paddingWhenConstrained = const EdgeInsets.all(20),
      this.centeredWhenConstrained = true,
      this.breakpoint = LayoutBreakpoint.sm,
      Key? key})
      : super(key: key);
  final Widget child;
  final double widthWhenConstrained;
  final EdgeInsets paddingWhenConstrained;
  final bool centeredWhenConstrained;
  final LayoutBreakpoint breakpoint;
  @override
  Widget build(BuildContext context) {
    final bool constrained = context.breakpoint >= breakpoint;
    final content = Padding(
        padding: constrained ? paddingWhenConstrained : EdgeInsets.zero,
        child: SizedBox(
            width: constrained ? widthWhenConstrained : null, child: child));
    return centeredWhenConstrained ? Center(child: content) : content;
  }
}

'''),
    ),
    const ViewerSectionUnion.apiDocs(
      id: 'apiDocs',
      title: 'API reference',
    ),
  ],
);
