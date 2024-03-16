import 'package:densu/app/routes/app_pages.dart';
import 'package:densu/app/themes/colors.dart';
import 'package:densu/app/widgets/button.dart';
import 'package:densu/app/widgets/checkbox.dart';
import 'package:densu/app/widgets/spacer.dart';
import 'package:densu/app/widgets/text.dart';
import 'package:densu/app/widgets/text_input.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/authentication_controller.dart';

class AuthenticationView extends GetView<AuthenticationController> {
  const AuthenticationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.primaryColor,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.only(top: 150, left: 20, right: 20),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Image(
                image: AssetImage("assets/images/logo.png"),
                width: 100,
                height: 65,
              ),
              const UniversalSpacer(
                height: SpacerConstants.large,
              ),
              UniversalText(
                "Welcome to Dentsu LMS",
                style: TextStyleConstants.getStyle(
                  textStyle: TextStyles.xlarge,
                  color: AppColors.background,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const UniversalSpacer(
                height: SpacerConstants.medium,
              ),
              UniversalText(
                "A tool that leverage's the power of data and artificial intelligence to drive digital transformation at scale",
                style: TextStyleConstants.getStyle(
                  textStyle: TextStyles.medium,
                  color: AppColors.background,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const UniversalSpacer(
                height: SpacerConstants.medium,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: UniversalText(
                  "Username",
                  style: TextStyleConstants.getStyle(
                    textStyle: TextStyles.medium,
                    color: AppColors.background,
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
              const UniversalSpacer(
                height: SpacerConstants.medium,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: UniversalText(
                  "Password",
                  style: TextStyleConstants.getStyle(
                    textStyle: TextStyles.medium,
                    color: AppColors.background,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              const UniversalSpacer(
                height: SpacerConstants.small,
              ),
              UniversalTextInput(
                controller: controller.passwordController,
                label: "Enter your Password",
                backgroundColor: AppColors.background,
              ),
              const UniversalSpacer(
                height: SpacerConstants.medium,
              ),
              Row(
                children: [
                  UniversalCheckbox(
                    isChecked: true,
                    onChange: (value) {},
                    backgroundColor: Colors.transparent,
                    borderColor: AppColors.background,
                    icon: Icons.check,
                    size: 40,
                    iconSize: 30,
                  ),
                  const UniversalSpacer(
                    width: SpacerConstants.xsmall,
                  ),
                  Text(
                    'Keep me logged in',
                    style: TextStyleConstants.getStyle(
                      textStyle: TextStyles.medium,
                      color: AppColors.background,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              const UniversalSpacer(
                height: SpacerConstants.large,
              ),
              UniversalButton(
                text: "Log In",
                onPressed: () {
                  Get.toNamed(Routes.MAIN);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
