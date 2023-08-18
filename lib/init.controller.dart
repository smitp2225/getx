import 'package:get/get.dart';
import 'package:getx/counter_controller.dart';
import 'package:getx/counter_demo/counter_controller_demo.dart';

class InitController {
  static get getAllController {
    Get.put(CounterController());
    Get.put(CounterController2());
  }
}
