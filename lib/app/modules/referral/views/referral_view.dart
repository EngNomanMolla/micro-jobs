import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/referral_controller.dart';

class ReferralView extends GetView<ReferralController> {
  const ReferralView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ReferralView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ReferralView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
