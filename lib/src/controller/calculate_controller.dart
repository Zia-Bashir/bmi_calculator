import 'package:get/get.dart';

class CalculateController extends GetxController {
  var result = 0.0.obs;

  calculate(double weight, height) {
    var weightBMI = weight;
    var heightBMI = height * height;

    var calculate = weightBMI / heightBMI;
    result.value = calculate;
  }
}
