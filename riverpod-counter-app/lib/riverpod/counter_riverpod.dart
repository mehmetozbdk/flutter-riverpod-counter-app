import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'counter_maneger.dart';

/// uygulma appBar başlığı
final appBarTittle = Provider<String>((ref) => 'Riverpod Sayac Uygulamsı');

/// değişecek sayac değerim
final sayac = StateProvider<int>((ref) => 0);

/// değişecek sayac değerii CounterViewModel den haline getirdim dogru olan yapı bu
final stateNofierProvider = ChangeNotifierProvider<CounterViewModel>(
  (ref) {
    return CounterViewModel();
  },
);

/// bu providerda da provider içide provider kullandık çok rahat bir şekilde kullandık
final tekmiCiftmiProvider = Provider<bool>((ref) {
  return ref.watch(stateNofierProvider).counterModel.counter % 2 == 0;
});
