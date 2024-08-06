import 'package:flutter/material.dart';

import '../model/counter_model.dart';

class CounterViewModel extends ChangeNotifier {

  final CounterModel _counterModel = CounterModel();

  int get count => _counterModel.count;

  void incrementCounter() {
    _counterModel.increment();
    notifyListeners(); // Notify listeners to rebuild the UI
  }


}
