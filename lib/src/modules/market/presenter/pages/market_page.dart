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
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text('Valorant Store'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: marketStore.mockSkins.length,
                itemBuilder: (context, index) {
                  final skin = marketStore.mockSkins[index];
                  return Card(
                    elevation: 4,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    child: ListTile(
                      title: Text(skin['name']!),
                      subtitle: Text(skin['price'].toString()),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
