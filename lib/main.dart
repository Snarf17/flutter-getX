import 'package:flutter/material.dart';
import 'package:flutter_getx/models/human.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var human = Human(name: 'jambun', umur: 25).obs;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter GetX'),
        ),
        body: Center(child: Obx(() => Text('Nama Saya ${human.value.name}'))),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            human.update((_) {
              human.value.name = human.value.name.toString().toUpperCase();
            });
          },
        ),
      ),
    );
  }
}
