import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QuoteDetailController extends GetxController {
  var benefits = [
    "Inpatient",
    "Outpatient",
    "No Co-payment",
    "Dental",
    "Optical",
    "Maternity",
    "Last Expense",
    "Personal Accident",
    "Enhanced Covid 19 Cover",
    "Amref Evacuation"
  ].obs;
  var firstNameController = TextEditingController();
  var middleNameController = TextEditingController();
  var lastNameController = TextEditingController();
  var originatingLeadSourceController = TextEditingController();
  var quoteIdController = TextEditingController();
  var owningBusinessController = TextEditingController();
  var leadIdController = TextEditingController();
  var sourceController = TextEditingController();
  var capturingUserController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    firstNameController.text = "Stacey";
    middleNameController.text = "Nyawira";
    lastNameController.text = "Waruguru";
    originatingLeadSourceController.text = "Sales Agent";
    quoteIdController.text = "QUO-O2O91-V2C8O9";
    owningBusinessController.text = "Kenya";
    leadIdController.text = "O";
    sourceController.text = "Agent Portal";
    capturingUserController.text = "Jeremy Kibor";
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
