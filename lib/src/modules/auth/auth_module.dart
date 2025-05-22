import 'package:flutter_modular/flutter_modular.dart';
import 'package:valorant_store_viewer/src/modules/auth/presenter/pages/signin_page.dart';
import 'package:valorant_store_viewer/src/modules/market/market_module.dart';

class AuthModule extends Module {
  @override
  void binds(Injector i) {}

  @override
  void routes(RouteManager r) {
    r.child(Modular.initialRoute, child: (context) => const SignInPage());
    r.module('/market_module/', module: MarketModule());
  }
}
