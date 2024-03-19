import 'package:densu/app/modules/home/data/leads_datasource.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QuotesController extends GetxController {
  final DataTableSource dataSource = LeadsDatasource();
  var isAddingNewQuote = false.obs;
  var emailController = TextEditingController();


  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
