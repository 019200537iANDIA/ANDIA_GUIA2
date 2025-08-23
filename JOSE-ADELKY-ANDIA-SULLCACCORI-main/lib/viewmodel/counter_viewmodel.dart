import 'package:flutter/foundation.dart';
import '../model/counter_model.dart';

class CounterViewModel extends ChangeNotifier {
  CounterModel _counter = CounterModel(0);

  int get count => _counter.count;

  void increment() {
    _counter.count++;
    notifyListeners();
  }

  void decrement() {
    _counter.count--;
    notifyListeners();
  }

  void reset() {
    _counter.count = 0;
    notifyListeners();
  }
}
