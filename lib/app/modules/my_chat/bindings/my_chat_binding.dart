import 'package:get/get.dart';

import '../controllers/my_chat_controller.dart';

class MyChatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyChatController>(
      () => MyChatController(),
    );
  }
}
