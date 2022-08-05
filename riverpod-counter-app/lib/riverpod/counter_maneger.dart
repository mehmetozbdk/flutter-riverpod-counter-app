import 'package:flutter/cupertino.dart';
import '../model/counter_model.dart';

class CounterViewModel extends ChangeNotifier {
  final CounterModel counterModel = CounterModel(counter: 0);

  void artirmak() {
    counterModel.counter++;
    notifyListeners();
  }

  void azalt() {
    counterModel.counter--;
    notifyListeners();
  }
}
