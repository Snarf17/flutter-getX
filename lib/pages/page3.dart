import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class PageTiga extends StatelessWidget {
  const PageTiga({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('page 3'),
        leading: ElevatedButton(
          onPressed: () {
            Get.back(result: "ini Dari page 3");
          },
          child: Icon(Icons.arrow_back),
        ),
      ),
      body: const Center(
        child: Text('Page Tiga'),
      ),
    );
  }
}
