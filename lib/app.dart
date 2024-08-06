import 'package:flutter/material.dart';
import 'package:mvvm_provider/view/counter_view.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CounterView(),
    );
  }
}
