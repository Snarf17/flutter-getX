import 'package:flutter_getx/models/human.dart';
import 'package:get/get.dart';

class HumanController extends GetxController {
  var human = Human();

  var theme = false;
  int count = 0;
  // String human = 'Bambang';

  void changeDarkTheme() {
    theme = !theme;
    update();
  }

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
