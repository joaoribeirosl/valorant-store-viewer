import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:valorant_store_viewer/src/main_app.dart';
import 'package:valorant_store_viewer/src/modules/auth/auth_module.dart';
import 'package:window_manager/window_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await windowManager.ensureInitialized();
  await windowManager.setMaximumSize(const Size(400, 800));
  runApp(ModularApp(
    module: AuthModule(),
    child: const MainApp(),
  ));
}
