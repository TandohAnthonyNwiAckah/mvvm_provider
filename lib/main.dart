import 'package:flutter/material.dart';
import 'package:mvvm_provider/viewmodels/counter_viewmodel.dart';
import 'package:mvvm_provider/viewmodels/user_viewmodel.dart';
import 'package:provider/provider.dart';

import 'app.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CounterViewModel()),
        ChangeNotifierProvider(create: (_) => UserViewModel()),
      ],
      child: const MyApp(),
    ),
  );
}
