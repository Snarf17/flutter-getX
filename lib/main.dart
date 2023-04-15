import 'package:flutter/material.dart';
import 'package:flutter_getx/controller/human.controller.dart';
import 'package:flutter_getx/models/human.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final cHuman = Get.put(HumanController());
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter GetX'),
          ),
          body:
              Center(child: Obx(() => Text('Nama Saya ${cHuman.human.name}'))),
          floatingActionButton: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                onPressed: () => cHuman.changeUppercase(),
                child: const Text('Up'),
              ),
              SizedBox(
                height: 10,
              ),
              FloatingActionButton(
                onPressed: () => cHuman.changeLowerCase(),
                child: const Text('Low'),
              ),
            ],
          )),
    );
  }
}
