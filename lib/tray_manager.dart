// /// DOES NOT WORK WELL

// import 'dart:io' show Platform;
// import 'package:tray_manager/tray_manager.dart';

// Future<void> initSystemTray() async {
//   await trayManager.setIcon(
//     Platform.isWindows ? 'images/tray_icon.ico' : 'images/tray_icon.png',
//   );

//   List<MenuItem> items = [
//     MenuItem(
//       // key: 'show_window',
//       label: 'Show Window',
//       onClick: (_) {
//         print('Clicked Show Window');
//       },
//     ),
//     MenuItem.separator(),
//     MenuItem(
//       // key: 'exit_app',
//       label: 'Exit App',
//       onClick: (_) {
//         print('Clicked Exit App');
//       },
//     ),
//   ];
//   await trayManager.setContextMenu(Menu(items: items));
// }
