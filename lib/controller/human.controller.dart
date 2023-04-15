import 'package:flutter_getx/models/human.dart';
import 'package:get/get.dart';

class HumanController extends GetxController {
  var human = Human();

  void changeUppercase() {
    human.name.value = human.name.value.toUpperCase();
  }

  void changeLowerCase() {
    human.name.value = human.name.value.toLowerCase();
  }
}
