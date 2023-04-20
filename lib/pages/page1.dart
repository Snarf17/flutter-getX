import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_getx/pages/page2.dart';
import 'package:flutter_getx/pages/page3.dart';
import 'package:flutter_getx/routes/name_route.dart';
import 'package:get/get.dart';

class PageSatu extends StatelessWidget {
  const PageSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Satu'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.to(PageDua(), arguments: "Argument");
              },
              // navigator!.push(MaterialPageRoute(
              //   builder: (_) => PageDua(),
              // )

              child: const Text('Page Dua'),
            ),
            ElevatedButton(
              onPressed: () => Get.toNamed(RouteNames.page_2),
              // navigator!.push(MaterialPageRoute(
              //   builder: (_) => PageDua(),
              // )

              child: const Text('Page Dua'),
            ),
          ],
        ),
      ),
    );
  }
}
