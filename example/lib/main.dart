import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_design/flutter_design.dart';
import 'package:flutter_design_viewer/flutter_design_viewer.dart';
import 'package:gap/gap.dart';
import 'package:universal_design/page_factory.design.dart';
import 'package:universal_design/universal_design.dart';
import 'package:url_strategy/url_strategy.dart';

import 'docs/docs.dart';

void main() async {
  // Recommended to make history browsing work better in web
  setPathUrlStrategy();
  // Prepare options
  final themes = {
    'dark': DesignTheme(
      materialTheme: ThemeData(
        colorSchemeSeed: Colors.teal,
        brightness: Brightness.dark,
      ).copyWith(useMaterial3: false),
    ),
    'light': DesignTheme(
      materialTheme: ThemeData(
        colorSchemeSeed: Colors.teal,
        brightness: Brightness.light,
      ).copyWith(useMaterial3: false),
    ),
  };
  final locales = {
    'en-US': const Locale('en', 'US'),
  };
  // Run the designer app
  runApp(
    DesignSystemViewerApp(
      settings: ViewerSettings(
        enabledLocales: locales,
        enabledThemes: themes,
        githubLink: 'https://github.com/ShiroYacha/universal_design/',
        widgetDisplayHeight: 500,
        rightPanelInitialWidth: 500,
      ),
      dataBuilders: const {},
      branding: Row(children: [
        Image.asset(
          'assets/images/logo.png',
          width: 25,
        ),
        const Gap(10),
        const Text('universal_design'),
      ]),
      initialState: ViewerState(
        viewMode: ViewMode.devices,
        displayMode: DisplayMode.widgetOnly,
        themeMode: ThemeMode.dark,
        explorerPinned: true,
        showDataBuilderByDefault: true,
        expandExplorerNodesByDefault: true,
        targetDeviceId: Devices.ios.iPhone12.identifier.toString(),
        targetDeviceIds: [
          Devices.ios.iPhone12.identifier.toString(),
          Devices.ios.iPad.identifier.toString(),
          Devices.macOS.wideMonitor.identifier.toString(),
        ],
        targetThemeId: themes.keys.first,
        targetThemeIds: themes.keys.toList(),
        targetLocaleId: locales.keys.first,
        targetLocaleIds: locales.keys.toList(),
      ),
      designerBuilder: (context, theme, child) =>
          UnversalDesignApp(child: child),
      pageGroups: [
        // Your custom pages
        ...buildGroupedPageTrees(docPages),
        // Theme pages (you can also opt out of the material 3 themes)
        buildThemePageGroup(
          themes: {
            for (final e in themes.entries) e.key: e.value.materialTheme,
          },
          useMaterial3: false,
        ),
        // Generated @design/@Design annotated pages
        buildComponentPageTree(componentPages: generatedComponentPages),
      ],
    ),
  );
}
