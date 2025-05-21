import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:valorant_store_viewer/src/main_app.dart';
import 'package:valorant_store_viewer/src/modules/market/market_module.dart';
import 'package:window_manager/window_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await WindowManager.instance.ensureInitialized();
  await windowManager.setMinimumSize(const Size(400, 600));
  runApp(ModularApp(
    module: MarketModule(),
    child: const MainApp(),
  ));
}
