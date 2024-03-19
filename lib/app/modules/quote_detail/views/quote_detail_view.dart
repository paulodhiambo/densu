import 'package:densu/app/themes/colors.dart';
import 'package:densu/app/widgets/drop_down.dart';
import 'package:densu/app/widgets/list_switch.dart';
import 'package:densu/app/widgets/spacer.dart';
import 'package:densu/app/widgets/text.dart';
import 'package:densu/app/widgets/text_input.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/quote_detail_controller.dart';

class QuoteDetailView extends GetView<QuoteDetailController> {
  const QuoteDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text("Quote Detail"),
      ),
      body: Center(
        child: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              centerTitle: false,
              leadingWidth: 200,
              elevation: 0,
              backgroundColor: Colors.white,
              leading: Container(
                margin: const EdgeInsets.only(top: SpacerConstants.small),
                child: UniversalText(
                  "View Quote",
                  style: TextStyleConstants.getStyle(
                    textStyle: TextStyles.xlarge,
                    color: AppColors.textPrimary,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              bottom: TabBar(
                tabs: [
                  UniversalText(
                    "Quote information",
                    style: TextStyleConstants.getStyle(
                      textStyle: TextStyles.small,
                      color: AppColors.textPrimary,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  UniversalText(
                    "Setup",
                    style: TextStyleConstants.getStyle(
                      textStyle: TextStyles.small,
                      color: AppColors.textPrimary,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  UniversalText(
                    "Benefit",
                    style: TextStyleConstants.getStyle(
                      textStyle: TextStyles.small,
                      color: AppColors.textPrimary,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
            ),
            body: TabBarView(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    left: SpacerConstants.standard,
                    right: SpacerConstants.standard,
                  ),
                  child: ListView(
                    children: [
                      const UniversalSpacer(
                        height: SpacerConstants.medium,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: UniversalText(
                          "First Name",
                          style: TextStyleConstants.getStyle(
                            textStyle: TextStyles.small,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      const UniversalSpacer(
                        height: SpacerConstants.small,
                      ),
                      UniversalTextInput(
                        controller: controller.firstNameController,
                        label: "Enter first name",
                        backgroundColor: AppColors.background,
                      ),
                      const UniversalSpacer(
                        height: SpacerConstants.small,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: UniversalText(
                          "Middle Name",
                          style: TextStyleConstants.getStyle(
                            textStyle: TextStyles.small,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      const UniversalSpacer(
                        height: SpacerConstants.small,
                      ),
                      UniversalTextInput(
                        controller: controller.middleNameController,
                        label: "Enter middle name",
                        backgroundColor: AppColors.background,
                      ),
                      const UniversalSpacer(
                        height: SpacerConstants.small,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: UniversalText(
                          "Last Name",
                          style: TextStyleConstants.getStyle(
                            textStyle: TextStyles.small,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      const UniversalSpacer(
                        height: SpacerConstants.small,
                      ),
                      UniversalTextInput(
                        controller: controller.lastNameController,
                        label: "Enter last name",
                        backgroundColor: AppColors.background,
                      ),
                      const UniversalSpacer(
                        height: SpacerConstants.small,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: UniversalText(
                          "Originating Lead Source",
                          style: TextStyleConstants.getStyle(
                            textStyle: TextStyles.small,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      const UniversalSpacer(
                        height: SpacerConstants.small,
                      ),
                      UniversalTextInput(
                        controller: controller.originatingLeadSourceController,
                        label: "Enter lead source",
                        backgroundColor: AppColors.background,
                      ),
                      const UniversalSpacer(
                        height: SpacerConstants.small,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: UniversalText(
                          "Quote ID",
                          style: TextStyleConstants.getStyle(
                            textStyle: TextStyles.small,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      const UniversalSpacer(
                        height: SpacerConstants.small,
                      ),
                      UniversalTextInput(
                        controller: controller.quoteIdController,
                        label: "Enter quote Id",
                        backgroundColor: AppColors.background,
                      ),
                      const UniversalSpacer(
                        height: SpacerConstants.small,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: UniversalText(
                          "Owning Business Unit",
                          style: TextStyleConstants.getStyle(
                            textStyle: TextStyles.small,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      const UniversalSpacer(
                        height: SpacerConstants.small,
                      ),
                      UniversalTextInput(
                        controller: controller.owningBusinessController,
                        label: "Enter name of owning unit",
                        backgroundColor: AppColors.background,
                      ),
                      const UniversalSpacer(
                        height: SpacerConstants.small,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: UniversalText(
                          "Lead ID",
                          style: TextStyleConstants.getStyle(
                            textStyle: TextStyles.small,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      const UniversalSpacer(
                        height: SpacerConstants.small,
                      ),
                      UniversalTextInput(
                        controller: controller.leadIdController,
                        label: "Enter lead Id",
                        backgroundColor: AppColors.background,
                      ),
                      const UniversalSpacer(
                        height: SpacerConstants.small,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: UniversalText(
                          "Source",
                          style: TextStyleConstants.getStyle(
                            textStyle: TextStyles.small,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      const UniversalSpacer(
                        height: SpacerConstants.small,
                      ),
                      UniversalTextInput(
                        controller: controller.sourceController,
                        label: "Enter source",
                        backgroundColor: AppColors.background,
                      ),
                      const UniversalSpacer(
                        height: SpacerConstants.small,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: UniversalText(
                          "Capturing User",
                          style: TextStyleConstants.getStyle(
                            textStyle: TextStyles.small,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      const UniversalSpacer(
                        height: SpacerConstants.small,
                      ),
                      UniversalTextInput(
                        controller: controller.capturingUserController,
                        label: "Enter name",
                        backgroundColor: AppColors.background,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    left: SpacerConstants.standard,
                    right: SpacerConstants.standard,
                  ),
                  child: ListView(
                    children: [
                      const UniversalSpacer(
                        height: SpacerConstants.medium,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: UniversalText(
                          "Age Bracket",
                          style: TextStyleConstants.getStyle(
                            textStyle: TextStyles.small,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      const UniversalSpacer(
                        height: SpacerConstants.small,
                      ),
                      DropdownOutlineInput<String>(
                        labelText: '',
                        items: const [
                          DropdownMenuItem(
                            value: '18',
                            child: Text('18 to 30 years'),
                          ),
                          DropdownMenuItem(
                            value: '31',
                            child: Text('31 to 40 years'),
                          ),
                          DropdownMenuItem(
                            value: '41',
                            child: Text('41 and above'),
                          ),
                        ],
                        initialValue: '18',
                        // Optional initial value
                        onChanged: (value) {},
                      ),
                      const UniversalSpacer(
                        height: SpacerConstants.standard,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: UniversalText(
                          "Inpatient Cover Limit",
                          style: TextStyleConstants.getStyle(
                            textStyle: TextStyles.small,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      const UniversalSpacer(
                        height: SpacerConstants.small,
                      ),
                      DropdownOutlineInput<String>(
                        labelText: '',
                        items: const [
                          DropdownMenuItem(
                            value: '100k',
                            child: Text('KES 100,000'),
                          ),
                          DropdownMenuItem(
                            value: '250k',
                            child: Text('KES 250,000'),
                          ),
                          DropdownMenuItem(
                            value: '500k',
                            child: Text('KES 500,000'),
                          ),
                        ],
                        initialValue: '500k', // Optional initial value
                        onChanged: (value) {},
                      ),
                      const UniversalSpacer(
                        height: SpacerConstants.standard,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: UniversalText(
                          "Spouse Covered?",
                          style: TextStyleConstants.getStyle(
                            textStyle: TextStyles.small,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      const UniversalSpacer(
                        height: SpacerConstants.small,
                      ),
                      DropdownOutlineInput<String>(
                        labelText: '',
                        items: const [
                          DropdownMenuItem(
                            value: 'Y',
                            child: Text('Yes'),
                          ),
                          DropdownMenuItem(
                            value: 'N',
                            child: Text('No'),
                          ),
                        ],
                        initialValue: 'Y', // Optional initial value
                        onChanged: (value) {},
                      ),
                      const UniversalSpacer(
                        height: SpacerConstants.standard,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: UniversalText(
                          "How Many Children?",
                          style: TextStyleConstants.getStyle(
                            textStyle: TextStyles.small,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      const UniversalSpacer(
                        height: SpacerConstants.small,
                      ),
                      DropdownOutlineInput<String>(
                        labelText: '',
                        items: const [
                          DropdownMenuItem(
                            value: '3',
                            child: Text('3 Children'),
                          ),
                          DropdownMenuItem(
                            value: '4',
                            child: Text('4 Children'),
                          ),
                          DropdownMenuItem(
                            value: '6',
                            child: Text('6 Children'),
                          ),
                        ],
                        initialValue: '6', // Optional initial value
                        onChanged: (value) {},
                      ),
                      const UniversalSpacer(
                        height: SpacerConstants.standard,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: UniversalText(
                          "Cover Children?",
                          style: TextStyleConstants.getStyle(
                            textStyle: TextStyles.small,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      const UniversalSpacer(
                        height: SpacerConstants.small,
                      ),
                      DropdownOutlineInput<String>(
                        labelText: '',
                        items: const [
                          DropdownMenuItem(
                            value: 'Y',
                            child: Text('Yes'),
                          ),
                          DropdownMenuItem(
                            value: 'N',
                            child: Text('No'),
                          ),
                        ],
                        initialValue: 'Y', // Optional initial value
                        onChanged: (value) {},
                      ),
                      const UniversalSpacer(
                        height: SpacerConstants.standard,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: UniversalText(
                          "Spouse Age Bracket",
                          style: TextStyleConstants.getStyle(
                            textStyle: TextStyles.small,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      const UniversalSpacer(
                        height: SpacerConstants.small,
                      ),
                      DropdownOutlineInput<String>(
                        labelText: '',
                        items: const [
                          DropdownMenuItem(
                            value: '18',
                            child: Text('18 to 30 years'),
                          ),
                          DropdownMenuItem(
                            value: '31',
                            child: Text('31 to 40 years'),
                          ),
                          DropdownMenuItem(
                            value: '41',
                            child: Text('41 and above'),
                          ),
                        ],
                        initialValue: '18', // Optional initial value
                        onChanged: (value) {},
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    left: SpacerConstants.standard,
                    right: SpacerConstants.standard,
                  ),
                  child: ListView(
                    children: [
                      const UniversalSpacer(
                        height: SpacerConstants.large,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: UniversalText(
                          "Inpatient Cover Limit",
                          style: TextStyleConstants.getStyle(
                            textStyle: TextStyles.small,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      const UniversalSpacer(
                        height: SpacerConstants.small,
                      ),
                      DropdownOutlineInput<String>(
                        labelText: '',
                        items: const [
                          DropdownMenuItem(
                            value: '500k',
                            child: Text('KES 500,000'),
                          ),
                          DropdownMenuItem(
                            value: '1M',
                            child: Text('KES 1,000,000'),
                          ),
                          DropdownMenuItem(
                            value: '5M',
                            child: Text('KES 5,000,000'),
                          ),
                        ],
                        initialValue: '1M', // Optional initial value
                        onChanged: (value) {},
                      ),
                      const UniversalSpacer(
                        height: SpacerConstants.large,
                      ),
                      Card(
                        color: Colors.white,
                        child: Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(
                                  top: SpacerConstants.small,
                                  left: SpacerConstants.small),
                              width: MediaQuery.of(context).size.width,
                              child: UniversalText(
                                "Benefits",
                                style: TextStyleConstants.getStyle(
                                  textStyle: TextStyles.medium,
                                  fontWeight: FontWeight.w700,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            Obx(
                              () => ListView(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                children: [
                                  for (int i = 0;
                                      i < controller.benefits.length;
                                      i++)
                                    Column(
                                      children: [
                                        CustomListTileWithSwitch(
                                          titleText: controller.benefits[i],
                                          switchValue: true,
                                          onSwitchChanged: (value) {},
                                        ),
                                        i != controller.benefits.length - 1
                                            ? Container(
                                                color: Colors.black26,
                                                height: 1,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.8,
                                              )
                                            : Container()
                                      ],
                                    ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const UniversalSpacer(
                        height: SpacerConstants.standard,
                      ),
                      Card(
                        color: Colors.white,
                        child: Container(
                          padding: const EdgeInsets.all(SpacerConstants.small),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(
                                        top: SpacerConstants.small,
                                        left: SpacerConstants.small),
                                    child: UniversalText(
                                      "Premium Summary",
                                      style: TextStyleConstants.getStyle(
                                        textStyle: TextStyles.medium,
                                        fontWeight: FontWeight.w700,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  const Icon(
                                    Icons.info_outlined,
                                    color: AppColors.primaryColor,
                                  )
                                ],
                              ),
                              const UniversalSpacer(
                                height: SpacerConstants.medium,
                              ),
                              Container(
                                height: 1,
                                width: MediaQuery.of(context).size.width * 0.8,
                                color: Colors.black26,
                              ),
                              const ListTile(
                                title: Text("Total"),
                                trailing: Text("Ksh 134,000"),
                              ),
                              Container(
                                height: 1,
                                width: MediaQuery.of(context).size.width * 0.8,
                                color: Colors.black26,
                              ),
                              ListTile(
                                title: const Text("M-PESA Paybill"),
                                trailing: const Image(
                                  image: AssetImage("assets/images/mpesa.png"),
                                  width: 85,
                                  height: 60,
                                ),
                                leading: Radio(
                                    value: true,
                                    groupValue: true,
                                    onChanged: (value) {}),
                              ),
                              ListTile(
                                title: const Text("Credit Debit Card"),
                                trailing: const Image(
                                  image: AssetImage("assets/images/visa.png"),
                                  width: 100,
                                  height: 25,
                                ),
                                leading: Radio(
                                    value: false,
                                    groupValue: false,
                                    onChanged: (value) {}),
                              ),
                              const UniversalSpacer(
                                height: SpacerConstants.medium,
                              ),
                              OutlinedButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                        10.0,
                                      ), // Set the border radius here
                                    ),
                                  ),
                                ),
                                child: const Text("Buy Now"),
                              ),
                              const UniversalSpacer(
                                height: SpacerConstants.medium,
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
