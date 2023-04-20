import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_getx/controller/mycontroller.dart';
import 'package:flutter_getx/models/human.dart';
import 'package:flutter_getx/pages/home.dart';
import 'package:flutter_getx/pages/page2.dart';
import 'package:flutter_getx/pages/page3.dart';
import 'package:flutter_getx/pages/page4.dart';
import 'package:flutter_getx/pages/page5.dart';
import 'package:flutter_getx/routes/page_route.dart';
import 'package:get/get.dart';
import 'package:flutter_getx/pages/page1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: PageSatu(),
      getPages: PageRoutes.pages,
    );
  }
}
