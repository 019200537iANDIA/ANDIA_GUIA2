import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'viewmodel/counter_viewmodel.dart';
import 'view/counter_view.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => CounterViewModel(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MVVM Counter',
      home: CounterView(),
    );
  }
}
