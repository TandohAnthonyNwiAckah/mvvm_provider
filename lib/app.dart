import 'package:flutter/material.dart';
import 'package:mvvm_provider/views/users/user_list_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: CounterView(),
      home: UserListView(),
    );
  }
}
