import 'package:mobx/mobx.dart';

part 'market_store.g.dart';

class MarketStore = IMarketStore with _$MarketStore;

abstract class IMarketStore with Store {
  final List<Map<String, String>> mockSkins = [
    {
      'name': 'Elderflame Vandal',
      'price': '1775 VP',
    },
    {
      'name': 'Prime Phantom',
      'price': '1775 VP',
    },
    {
      'name': 'Prime Phantom',
      'price': '1775 VP',
    },
    {
      'name': 'Prime Phantom',
      'price': '1775 VP',
    },
  ];
}
