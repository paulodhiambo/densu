import 'package:densu/app/modules/home/controllers/home_controller.dart';
import 'package:densu/app/modules/quotes/controllers/quotes_controller.dart';
import 'package:get/get.dart';

import '../controllers/main_controller.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainController>(
      () => MainController(),
    );

    Get.lazyPut<HomeController>(
      () => HomeController(),
    );

    Get.lazyPut<QuotesController>(
          () => QuotesController(),
    );
  }
}
