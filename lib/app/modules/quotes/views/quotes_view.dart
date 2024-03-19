import 'package:densu/app/routes/app_pages.dart';
import 'package:densu/app/themes/colors.dart';
import 'package:densu/app/widgets/spacer.dart';
import 'package:densu/app/widgets/text.dart';
import 'package:densu/app/widgets/text_input.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/quotes_controller.dart';

class QuotesView extends GetView<QuotesController> {
  const QuotesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(
            left: SpacerConstants.standard,
            right: SpacerConstants.standard,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  UniversalText(
                    "Quotes",
                    style: TextStyleConstants.getStyle(
                      textStyle: TextStyles.xlarge,
                      color: AppColors.textPrimary,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Row(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: AppColors.buttonColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        onPressed: () {
                          Get.toNamed(Routes.QUOTE_DETAIL);
                        },
                        child: const Row(
                          children: [
                            Icon(Icons.add),
                            UniversalSpacer(
                              width: SpacerConstants.xsmall,
                            ),
                            Text("New Quote")
                          ],
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.more_horiz),
                      )
                    ],
                  ),
                ],
              ),
              const UniversalSpacer(
                height: SpacerConstants.medium,
              ),
              PaginatedDataTable(
                columns: <DataColumn>[
                  DataColumn(
                    label: UniversalText(
                      '#',
                      style: TextStyleConstants.getStyle(
                        textStyle: TextStyles.small,
                        color: AppColors.textPrimary,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  DataColumn(
                    label: UniversalText(
                      'Name',
                      style: TextStyleConstants.getStyle(
                        textStyle: TextStyles.small,
                        color: AppColors.textPrimary,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
                source: controller.dataSource,
              )
            ],
          ),
        ),
      )),
    );
  }
}
