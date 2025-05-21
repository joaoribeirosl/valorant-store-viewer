import 'package:mobx/mobx.dart';

part 'market_store.g.dart';

class MarketStore = IMarketStore with _$MarketStore;

abstract class IMarketStore with Store {
  final List<Map<String, String>> mockSkins = [
    {
      'name': 'Vandal',
      'image': 'https://skin-1',
      'price': '1775 VP',
    },
    {
      'name': 'Phantom',
      'image': 'https://skin-2',
      'price': '1775 VP',
    },
  ];
}
