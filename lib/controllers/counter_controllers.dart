import 'package:get/get.dart';

class CounterControllers extends GetxController {
  var counter = 0.obs;

  void increment() => counter + 1;
  
}