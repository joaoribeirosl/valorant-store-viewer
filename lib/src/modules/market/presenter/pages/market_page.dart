import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:valorant_store_viewer/src/modules/market/presenter/store/market_store.dart';

class MarketPage extends StatefulWidget {
  const MarketPage({super.key});

  @override
  State<MarketPage> createState() => MarketPageState();
}

class MarketPageState extends State<MarketPage> {
  late final MarketStore marketStore;

  @override
  void initState() {
    super.initState();
    marketStore = context.read<MarketStore>();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [],
      ),
    );
  }
}
