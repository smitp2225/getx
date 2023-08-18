import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/counter_controller.dart';

class CounterAppDemo extends StatelessWidget {
  const CounterAppDemo({super.key});

  @override
  Widget build(BuildContext context) {
    CounterController counterController = Get.find();
    return Scaffold(
      body: Center(
        child: Obx(
          () => Text(
            counterController.count.value.toString(),
            style: const TextStyle(
              fontSize: 30,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterController.count++;
          print(counterController.count);
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
