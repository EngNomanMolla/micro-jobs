import 'package:get/get.dart';

import '../controllers/link_post_controller.dart';

class LinkPostBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LinkPostController>(
      () => LinkPostController(),
    );
  }
}
