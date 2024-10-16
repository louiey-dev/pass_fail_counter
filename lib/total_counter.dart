import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pass_fail_counter/pass_fail_controller.dart';

class TotalCounter extends StatelessWidget {
  TotalCounter({super.key});

  final PassFailController c = Get.put(PassFailController());

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Total",
              style: TextStyle(fontSize: 24),
            ),
            Obx(() => Text(
                  "${c.totalCount}",
                  style: const TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                      color: Colors.green),
                )),
          ],
        ),
      ),
    );
  }
}
