import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/level_controller.dart';

class LevelView extends GetView<LevelController> {
  const LevelView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LevelView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'LevelView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
