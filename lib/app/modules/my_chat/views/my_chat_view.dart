import 'package:chat_getx/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';

import 'package:get/get.dart';

import '../controllers/my_chat_controller.dart';

class MyChatView extends GetWidget<MyChatController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyChatView'),
        centerTitle: true,
      ),
      /*    body: GetBuilder<MyChatController>(
        init: MyChatController(),
        initState: (_) {},
        builder: (controller) {
          return Chat(
            messages: controller.messagesObj,
            onAttachmentPressed: controller.handleAtachmentPressed,
            onMessageTap: controller.handleMessageTap,
            onPreviewDataFetched: controller.handlePreviewDataFetched,
            onSendPressed: controller.handleSendPressed,
            user: controller.user,
          );
        },
      ), */
      body: Obx(() => Chat(
            messages: controller.msg,
            onAttachmentPressed: controller.handleAtachmentPressed,
            onMessageTap: controller.handleMessageTap,
            onPreviewDataFetched: controller.handlePreviewDataFetched,
            onSendPressed: controller.handleSendPressed,
            user: controller.user,
          )),
    );
  }
}
