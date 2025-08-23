import 'package:flutter/foundation.dart';
import '../model/counter_model.dart';

class CounterViewModel extends ChangeNotifier {
  final CounterModel _model = CounterModel();

  int get minusCount => _model.minusValue;
  int get plusCount => _model.plusValue;

  void incrementPlus() {
    _model.plusValue++;
    notifyListeners();
  }

  void incrementMinus() {
    _model.minusValue++;
    notifyListeners();
  }
}
