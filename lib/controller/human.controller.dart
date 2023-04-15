import 'package:flutter_getx/models/human.dart';
import 'package:get/get.dart';

class HumanController extends GetxController {
  var human = Human();
  // String human = 'Bambang';

  void changeUppercase() {
    human.name = human.name.toUpperCase();
    update();
  }

  void changeLowerCase() {
    human.name = human.name.toLowerCase();
    update();
  }
}
