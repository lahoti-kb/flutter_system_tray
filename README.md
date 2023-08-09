# flutter_system_tray

To demonstrate app tray menu and closing windows only with app tray menu.

## System Tray
Tried 2 packages for system tray icon
- system_tray
- tray_manager

Could make tray_manager work. The menu was not opening on click on macos.

system_tray works as expected.

## Window Management
Used package window_manager to manage the lifecycle.

To prevent closing the application on click close of window on macos, follow the instruction [here](https://pub.dev/documentation/window_manager/latest/#quit-on-close)

To have the app window hidden on launch, make the following changes as [mentioned](https://pub.dev/documentation/window_manager/latest/#hidden-at-launch). Haven't tried it.

All the POC was done on mac and not on windows.