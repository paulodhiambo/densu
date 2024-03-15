import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/quotes_controller.dart';

class QuotesView extends GetView<QuotesController> {
  const QuotesView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QuotesView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'QuotesView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
