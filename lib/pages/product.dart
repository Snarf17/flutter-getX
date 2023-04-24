import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_getx/pages/page2.dart';
import 'package:flutter_getx/pages/page3.dart';
import 'package:flutter_getx/routes/name_route.dart';
import 'package:get/get.dart';

class Product extends StatelessWidget {
  Product({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Get.toNamed(RouteNames.detailproduct + '/1'),
              child: const Text('Sweater'),
            ),
            ElevatedButton(
              onPressed: () => Get.toNamed(RouteNames.detailproduct + '/2'),
              child: const Text('Tshirt'),
            ),
            ElevatedButton(
              onPressed: () => Get.toNamed(RouteNames.detailproduct + '/3'),
              child: const Text('Celana'),
            ),
          ],
        ),
      ),
    );
  }
}
