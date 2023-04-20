import 'package:flutter_getx/models/human.dart';
import 'package:get/get.dart';

class MyController extends GetxController {
  var human = Human();

  var theme = false;
  var count = 0.obs;

  // String human = 'Bambang';

  void changeDarkTheme() {
    theme = !theme;
    update();
  }

  void refresh() => count.value = 0;
  void change() => count.value++;

  void changeUppercase() {
    human.name = human.name.toUpperCase();
    update();
  }

  void changeLowerCase() {
    human.name = human.name.toLowerCase();
    update();
  }

  void add() {
    count++;
    update();
  }
}
