import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/leads_controller.dart';

class LeadsView extends GetView<LeadsController> {
  const LeadsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LeadsView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'LeadsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
