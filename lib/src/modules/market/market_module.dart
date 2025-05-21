import 'package:flutter_modular/flutter_modular.dart';
import 'package:valorant_store_viewer/src/modules/market/presenter/pages/market_page.dart';
import 'package:valorant_store_viewer/src/modules/market/presenter/store/market_store.dart';

class MarketModule extends Module {
  @override
  void binds(Injector i) {
    i.addSingleton(MarketStore.new);
  }

  @override
  void routes(RouteManager r) {
    r.child(Modular.initialRoute, child: (context) => const MarketPage());
  }
}
