import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newshout_project/controllers/counter_controllers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
  
  class HomePage extends StatelessWidget {
    final counterC = Get.put(CounterControllers());
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Obx(() => Text(
            'Angkat ${counterC.counter}',
            style: TextStyle(
              fontSize: 35,
            ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => counterC.increment(),
          ),
      );
    }
  }
