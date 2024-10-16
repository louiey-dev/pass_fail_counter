import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pass_fail_counter/pass_fail_controller.dart';

class FailCounter extends StatelessWidget {
  FailCounter({super.key});

  final PassFailController c = Get.put(PassFailController());

  @override
  Widget build(BuildContext context) {
    Get.put(PassFailController());
    return Expanded(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Fail Counter',
              style: TextStyle(fontSize: 24),
            ),
            Obx(() => Text(
                  "${c.failCount}",
                  style: const TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange),
                )),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: c.incrementFailCounter,
                  child: const Icon(Icons.add),
                ),
                const SizedBox(width: 30),
                ElevatedButton(
                  onPressed: c.decrementFailCounter,
                  child: const Icon(Icons.remove),
                ),
                const SizedBox(width: 30),
                ElevatedButton(
                  onPressed: c.resetFailCounter,
                  child: const Icon(Icons.restore),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
