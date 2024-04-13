import 'package:flutter/material.dart';
import 'Provider/ProviderSericde.dart';

import 'package:provider/provider.dart';

import 'View/homeView.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => ProviderProduct(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:HomeView()
    );
  }
}
