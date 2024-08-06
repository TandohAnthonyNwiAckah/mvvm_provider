import 'package:flutter/material.dart';
import 'package:mvvm_provider/viewmodel/counter_viewmodel.dart';
import 'package:provider/provider.dart';
import 'app.dart';

void main() {

  runApp(
    ChangeNotifierProvider(
      create: (context) => CounterViewModel(),
      child: MyApp(),
    ),
  );

}
