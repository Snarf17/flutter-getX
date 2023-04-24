import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_getx/routes/name_route.dart';
import 'package:get/get.dart';

class ExampleSnackBar extends StatelessWidget {
  const ExampleSnackBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Snack Bar'),
          centerTitle: true,
        ),
        body: Center(
          child: const Text('Snack Bar'),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () => Get.snackbar(
                'SnackBar', "test",
                animationDuration: Duration(milliseconds: 950),
                duration: Duration(seconds: 2),

                barBlur: 1.1,
                backgroundColor: Colors.red,
                icon: Icon(Icons.ac_unit),
                onTap: (snack) => Get.toNamed(RouteNames.page_3),
                // backgroundGradient: LinearGradient(colors: Colors.accents)
              ),
              child: const Text('Snack'),
            ),
            SizedBox(
              height: 20,
            ),
            FloatingActionButton(
              onPressed: () => Get.defaultDialog(
                onCancel: () => print('cancel'),
                onConfirm: () => print('Confirm'),
                // textCancel: 'Cancel',
              ),
              child: const Text('Dialog Get'),
            ),
          ],
        ));
  }
}
