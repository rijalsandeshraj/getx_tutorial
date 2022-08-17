import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/controllers/store_controller.dart';
import 'package:getx_tutorial/widgets/rounded_input.dart';

class UpdateStoreNameScreen extends StatelessWidget {
  UpdateStoreNameScreen({Key? key}) : super(key: key);

  final StoreController storeController = Get.find<StoreController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Update Store Name'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: <Widget>[
            const Text(
              'Enter Store Name',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 28),
            ),
            const SizedBox(height: 16),
            RoundedInput(
              hintText: 'Store Name',
              controller: storeController.storeNameEditingController,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              child: const Text(
                'Update',
                style: TextStyle(fontSize: 20),
              ),
              onPressed: () {
                storeController.updateStoreName(
                    storeController.storeNameEditingController.text);
                Get.snackbar(
                  'Updated',
                  'Store name has been updated to\n'
                      '${storeController.storeNameEditingController.text}',
                  colorText: Colors.white,
                  backgroundColor: Colors.green,
                  duration: const Duration(milliseconds: 1500),
                  padding: const EdgeInsets.all(8),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
