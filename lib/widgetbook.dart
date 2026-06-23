import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
import 'package:finance_design_system/finance_design_system.dart';

import 'widgetbook.directories.g.dart';

void main() {
  runApp(const MyWidgetBook());
}

@widgetbook.App()
class MyWidgetBook extends StatelessWidget {
  const MyWidgetBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      directories: directories,
      addons: [
        ThemeAddon(
          themes: [
            WidgetbookTheme(
              name: 'Light',
              data: FinanceTheme.lightTheme,
            ),
            WidgetbookTheme(
              name: 'Dark',
              data: FinanceTheme.darkTheme,
            ),
          ],
          themeBuilder: (context, theme, child) {
            return MaterialApp(
              theme: theme,
              home: Scaffold(
                body: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: child,
                  ),
                ),
              ),
            );
          },
        ),
        DeviceFrameAddon(
          devices: [
            Devices.ios.iPhone13,
            Devices.android.samsungGalaxyS20,
            Devices.macOS.macBookPro,
          ],
          initialDevice: Devices.ios.iPhone13,
        ),
      ],
    );
  }
}
