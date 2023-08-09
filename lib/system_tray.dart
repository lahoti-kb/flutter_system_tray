import 'dart:io';
import 'package:system_tray/system_tray.dart';
import 'package:window_manager/window_manager.dart';

Future<AppWindow> initSystemTray() async {
  String path =
      Platform.isWindows ? 'images/tray_icon.ico' : 'images/tray_icon.png';

  final AppWindow appWindow = AppWindow();
  final SystemTray systemTray = SystemTray();

  // We first init the systray menu
  await systemTray.initSystemTray(
    // title: "system tray",
    iconPath: path,
  );

  // create context menu
  final Menu menu = Menu();
  await menu.buildFrom([
    MenuItemLabel(label: 'Show', onClicked: (menuItem) => appWindow.show()),
    MenuSeparator(),
    MenuItemLabel(label: 'Hide', onClicked: (menuItem) => appWindow.hide()),
    // MenuItemLabel(label: 'Exit', onClicked: (menuItem) => appWindow.close()),
    MenuItemLabel(
        label: 'Exit', onClicked: (menuItem) => windowManager.destroy()),
  ]);

  // set context menu
  await systemTray.setContextMenu(menu);

  // handle system tray event
  systemTray.registerSystemTrayEventHandler((eventName) {
    print("eventName: $eventName");
    if (eventName == kSystemTrayEventRightClick) {
      Platform.isWindows ? systemTray.popUpContextMenu() : appWindow.show();
    } else if (eventName == kSystemTrayEventClick) {
      Platform.isWindows ? appWindow.show() : systemTray.popUpContextMenu();
      // appWindow.show();
    }
  });

  return appWindow;
}
