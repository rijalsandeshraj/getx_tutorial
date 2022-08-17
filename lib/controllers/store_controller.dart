import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/models/store_review.dart';

class StoreController extends GetxController {
  // String for changin the store name
  final RxString storeName =
      'Sandesh Store'.obs; // Using 'obs' to make the variable observable
  // int for increasing the follower count
  final RxInt followersCount = 0.obs;
  // bool for showing the status of the store (open or close)
  final RxBool storeStatus = true.obs;
  // List for names of store followers
  final RxList followersList = [].obs;
  // Map for names and their reviews for the store
  final RxList reviews = <StoreReview>[].obs;
  int storeFollowerCount = 0;

  // TextEditingControllers
  final TextEditingController storeNameEditingController =
      TextEditingController();
  final TextEditingController reviewEditingController = TextEditingController();
  final TextEditingController followerEditingController =
      TextEditingController();
  final TextEditingController reviewerNameEditingController =
      TextEditingController();

  void addStoreFollower() {
    storeFollowerCount++;
    update();
  }

  void updateStoreName(String name) {
    storeName(name);
  }

  void updateFollowerCount() {
    followersCount(followersCount.value + 1);
  }

  void storeStatusOpen(bool isOpen) {
    storeStatus(isOpen);
  }

  void updateFollowersList(List<String> list) {
    followersList.assignAll(list);
  }

  void addNewFollower(String name) {
    followersList.add(name);
  }

  void addReview(StoreReview storeReview) {
    reviews.add(storeReview);
  }

  @override
  void dispose() {
    storeNameEditingController.dispose();
    reviewEditingController.dispose();
    reviewerNameEditingController.dispose();
    followerEditingController.dispose();
  }
}
