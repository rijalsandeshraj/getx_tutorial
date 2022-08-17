import 'package:get/get.dart';
import 'package:getx_tutorial/screens/home_screen.dart';

class RouterHelper {
  static String home = "/";

  // static String getInitial() => initial;
  // static String getTopJobs() => topJobs;
  // static String getJobDetails(int pageId) => "$jobDetails?pageId=$pageId";
  // static String getJobList() => jobList;

  static List<GetPage> routes = [
    GetPage(name: home, page: () => const HomeScreen()),
  ];
}
