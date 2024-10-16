import 'package:flutter/material.dart';
import 'package:pass_fail_counter/pass_fail_controller.dart';
import 'package:get/get.dart';

class PassCounter extends StatelessWidget {
  PassCounter({super.key});

  final PassFailController c = Get.put(PassFailController());

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Pass Counter',
              style: TextStyle(fontSize: 24),
            ),
            Obx(() => Text(
                  "${c.passCount}",
                  style: const TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent),
                )),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: c.incrementPassCounter,
                  child: const Icon(Icons.add),
                ),
                const SizedBox(width: 30),
                ElevatedButton(
                  onPressed: c.decrementPassCounter,
                  child: const Icon(Icons.remove),
                ),
                const SizedBox(width: 30),
                ElevatedButton(
                  onPressed: c.resetPassCounter,
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
