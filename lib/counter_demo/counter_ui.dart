import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/counter_demo/counter_controller_demo.dart';

class ControllerDemoApp extends StatelessWidget {
  const ControllerDemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    CounterController2 counterController2 = Get.find();
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                color: Colors.blue,
                onPressed: () {
                  counterController2.doubledecriment -= 2;
                  print(counterController2.doubledecriment);
                },
                child: const Icon(Icons.minimize),
              ),
              const SizedBox(
                width: 20,
              ),
              Obx(
                () => Text(
                  counterController2.doubledecriment.value.toString(),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              MaterialButton(
                color: Colors.blue,
                onPressed: () {
                  counterController2.doubledecriment += 2;
                  print(counterController2.doubledecriment);
                },
                child: const Icon(Icons.add),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                color: Colors.blue,
                onPressed: () {
                  counterController2.count2--;
                  print(counterController2.count2);
                },
                child: const Icon(Icons.minimize),
              ),
              const SizedBox(
                width: 20,
              ),
              Obx(
                () => Text(
                  counterController2.count2.value.toString(),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              MaterialButton(
                color: Colors.blue,
                onPressed: () {
                  counterController2.count2++;
                  print(counterController2.count2);
                },
                child: const Icon(Icons.add),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
