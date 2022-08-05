import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../riverpod/counter_riverpod.dart';

class ConterPage extends ConsumerWidget {
  const ConterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    log('MyHomePage build tetiklendi');
    return Scaffold(
      appBar: AppBar(title: Text(ref.watch(appBarTittle))),

      ///
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          /// global olarak tanımladıgımı değişkenı burda her tıklamada gidip degeri bir artırıyoruz
          /// bu reead iş yapar dinleme ve izle yapmaz
          ref.read(stateNofierProvider.notifier).artirmak();
        },
        child: const Icon(
          Icons.add,
        ),
      ),
      body: const Center(
        child:  CounterText(),
      ),
    );
  }
}

class CounterText extends ConsumerWidget {
  const CounterText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
     log('CounterText build tetiklendi');
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          /// değeri izliyoruz yani dinliyoruz
          ref.watch(stateNofierProvider).counterModel.counter.toString(),
          style: const TextStyle(
            fontSize: 40,
          ),
        ),
        Text(
      /// değeri izliyoruz yani dinliyoruz
      ref.watch(tekmiCiftmiProvider) ? 'Çift':'Tek',
      style: const TextStyle(
        fontSize: 40,
      ),
    ),
      ],
    );
  }
}
