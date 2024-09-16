import 'package:get/get.dart';

import '../controllers/post_live_controller.dart';

class PostLiveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PostLiveController>(
      () => PostLiveController(),
    );
  }
}
