import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PassFailController extends GetxController {
  RxInt totalCount = 0.obs;
  RxInt passCount = 0.obs;
  RxInt failCount = 0.obs;

  void incrementPassCounter() {
    passCount++;
    totalCount.value = passCount.value + failCount.value;
    update();
    debugPrint("pass++ $totalCount");
  }

  void decrementPassCounter() {
    if (passCount > 0) {
      passCount--;
      totalCount.value = passCount.value + failCount.value;
      update();
      debugPrint("pass-- $totalCount");
    }
  }

  void resetPassCounter() {
    passCount.value = 0;
    totalCount.value = passCount.value + failCount.value;
    update();
    debugPrint("pass== $totalCount");
  }

  void incrementFailCounter() {
    failCount++;
    totalCount.value = passCount.value + failCount.value;
    update();
    debugPrint("fail++ $totalCount");
  }

  void decrementFailCounter() {
    if (failCount > 0) {
      failCount--;
      totalCount.value = passCount.value + failCount.value;
      update();
      debugPrint("fail-- $totalCount");
    }
  }

  void resetFailCounter() {
    failCount.value = 0;
    totalCount.value = passCount.value + failCount.value;
    update();
    debugPrint("fail== $totalCount");
  }
}
