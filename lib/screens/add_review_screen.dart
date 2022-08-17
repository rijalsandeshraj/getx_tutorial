import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/controllers/store_controller.dart';
import 'package:getx_tutorial/models/store_review.dart';
import 'package:getx_tutorial/widgets/rounded_input.dart';

class AddReviewScreen extends StatelessWidget {
  AddReviewScreen({Key? key}) : super(key: key);

  final StoreController storeController = Get.find<StoreController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Test Reviews')),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: <Widget>[
              RoundedInput(
                hintText: 'Enter Name',
                controller: storeController.reviewerNameEditingController,
              ),
              const SizedBox(height: 16),
              RoundedInput(
                hintText: 'Write Review',
                controller: storeController.reviewEditingController,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                child: const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Add',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                onPressed: () {
                  var review = StoreReview(
                      name: storeController.reviewerNameEditingController.text,
                      review: storeController.reviewEditingController.text);
                  storeController.addReview(review);
                  Get.snackbar('Reviewed',
                      'Review added by: ${storeController.reviewerNameEditingController.text}',
                      snackPosition: SnackPosition.BOTTOM);
                  storeController.reviewerNameEditingController.clear();
                  storeController.reviewEditingController.clear();
                },
              ),
              Obx(() => ListView.builder(
                    shrinkWrap: true,
                    itemCount: storeController.reviews.length,
                    itemBuilder: (context, index) {
                      List<StoreReview> storeReviews = storeController.reviews
                          .map((element) => StoreReview(
                                name: element.name,
                                review: element.review,
                              ))
                          .toList();
                      return ListTile(
                        title: Text(storeReviews[index].name),
                        subtitle: Text(storeReviews[index].review),
                      );
                    },
                  )),
            ],
          ),
        ));
  }
}
