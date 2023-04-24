import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_getx/controller/mycontroller.dart';
import 'package:flutter_getx/models/human.dart';
import 'package:flutter_getx/pages/home.dart';
import 'package:flutter_getx/pages/product.dart';
import 'package:flutter_getx/routes/page_route.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomePage(),
      getPages: PageRoutes.pages,
    );
  }
}
