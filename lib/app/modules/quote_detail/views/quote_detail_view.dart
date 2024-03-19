import 'package:densu/app/themes/colors.dart';
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
        title: const Text("Quote detail"),
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
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: UniversalText(
                          "Username",
                          style: TextStyleConstants.getStyle(
                            textStyle: TextStyles.medium,
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      const UniversalSpacer(
                        height: SpacerConstants.small,
                      ),
                      UniversalTextInput(
                        controller: controller.emailController,
                        label: "Enter your email or Username",
                        backgroundColor: AppColors.background,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: UniversalText(
                          "Username",
                          style: TextStyleConstants.getStyle(
                            textStyle: TextStyles.medium,
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      const UniversalSpacer(
                        height: SpacerConstants.small,
                      ),
                      UniversalTextInput(
                        controller: controller.emailController,
                        label: "Enter your email or Username",
                        backgroundColor: AppColors.background,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: UniversalText(
                          "Username",
                          style: TextStyleConstants.getStyle(
                            textStyle: TextStyles.medium,
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      const UniversalSpacer(
                        height: SpacerConstants.small,
                      ),
                      UniversalTextInput(
                        controller: controller.emailController,
                        label: "Enter your email or Username",
                        backgroundColor: AppColors.background,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: UniversalText(
                          "Username",
                          style: TextStyleConstants.getStyle(
                            textStyle: TextStyles.medium,
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      const UniversalSpacer(
                        height: SpacerConstants.small,
                      ),
                      UniversalTextInput(
                        controller: controller.emailController,
                        label: "Enter your email or Username",
                        backgroundColor: AppColors.background,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: UniversalText(
                          "Username",
                          style: TextStyleConstants.getStyle(
                            textStyle: TextStyles.medium,
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      const UniversalSpacer(
                        height: SpacerConstants.small,
                      ),
                      UniversalTextInput(
                        controller: controller.emailController,
                        label: "Enter your email or Username",
                        backgroundColor: AppColors.background,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: UniversalText(
                          "Username",
                          style: TextStyleConstants.getStyle(
                            textStyle: TextStyles.medium,
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      const UniversalSpacer(
                        height: SpacerConstants.small,
                      ),
                      UniversalTextInput(
                        controller: controller.emailController,
                        label: "Enter your email or Username",
                        backgroundColor: AppColors.background,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: UniversalText(
                          "Username",
                          style: TextStyleConstants.getStyle(
                            textStyle: TextStyles.medium,
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      const UniversalSpacer(
                        height: SpacerConstants.small,
                      ),
                      UniversalTextInput(
                        controller: controller.emailController,
                        label: "Enter your email or Username",
                        backgroundColor: AppColors.background,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: UniversalText(
                          "Username",
                          style: TextStyleConstants.getStyle(
                            textStyle: TextStyles.medium,
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      const UniversalSpacer(
                        height: SpacerConstants.small,
                      ),
                      UniversalTextInput(
                        controller: controller.emailController,
                        label: "Enter your email or Username",
                        backgroundColor: AppColors.background,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: UniversalText(
                          "Username",
                          style: TextStyleConstants.getStyle(
                            textStyle: TextStyles.medium,
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      const UniversalSpacer(
                        height: SpacerConstants.small,
                      ),
                      UniversalTextInput(
                        controller: controller.emailController,
                        label: "Enter your email or Username",
                        backgroundColor: AppColors.background,
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Icon(Icons.directions_transit),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.directions_bike),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
