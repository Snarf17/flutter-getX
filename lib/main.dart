import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_getx/controller/human.controller.dart';
import 'package:flutter_getx/models/human.dart';
import 'package:get/get.dart';

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
  final countC = Get.put(HumanController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => OtherPage(),
            )),
            icon: const Icon(Icons.home),
          )
        ],
        title: const Text('LifeCycle'),
        centerTitle: true,
      ),
      body: Center(
        child: CountWidget(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => countC.add(),
      ),
    );
  }
}

class CountWidget extends StatelessWidget {
  // int count;
  // final counC = Get.find<HumanController>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HumanController>(
      builder: (c) => Text('Angka ${c.count}'),
    );
  }
}

class OtherPage extends StatelessWidget {
  const OtherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Other Page'),
      ),
      body: const Text('Other Page'),
    );
  }
}
