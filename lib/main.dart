import 'package:flutter/material.dart';
import 'package:flutter_getx/controller/human.controller.dart';
import 'package:flutter_getx/models/human.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // final cHuman = Get.put(HumanController()); // ini cara ketika menggunakan obs
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Flutter GetX'),
          ),
          body: Center(
              child: GetX<HumanController>(
            init: HumanController(),
            builder: (controller) => Text('Nama saya ${controller.human.name}'),
          )),
          floatingActionButton: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                onPressed: () => Get.find<HumanController>().changeUppercase(),
                child: const Text('Up'),
              ),
              const SizedBox(
                height: 10,
              ),
              FloatingActionButton(
                onPressed: () => Get.find<HumanController>().changeLowerCase(),
                child: const Text('Low'),
              ),
            ],
          )),
    );
  }
}
