import 'package:flutter_getx/models/human.dart';
import 'package:get/get.dart';

class HumanController extends GetxController {
  var human = Human();
  var theme = false;
  // String human = 'Bambang';

  void changeDarkTheme() {
    theme = !theme;
  }

  void changeUppercase() {
    human.name = human.name.toUpperCase();
    update();
  }

  void changeLowerCase() {
    human.name = human.name.toLowerCase();
    update();
  }
}
