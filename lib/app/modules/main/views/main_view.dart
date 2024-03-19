import 'package:densu/app/modules/home/views/home_view.dart';
import 'package:densu/app/modules/leads/views/leads_view.dart';
import 'package:densu/app/modules/profile/views/profile_view.dart';
import 'package:densu/app/modules/quotes/views/quotes_view.dart';
import 'package:densu/app/themes/app_theme.dart';
import 'package:densu/app/widgets/spacer.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/main_controller.dart';

class MainView extends GetView<MainController> {
  const MainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const Padding(
          padding: EdgeInsets.only(left: SpacerConstants.standard),
          child: Image(
            image: AssetImage("assets/images/logo.png"),
            width: 50,
            height: 35,
            fit: BoxFit.contain,
          ),
        ),
        actions: const [
          CircleAvatar(
            radius: 16,
            backgroundImage: AssetImage("assets/images/profile.png"),
          ),
          UniversalSpacer(
            width: SpacerConstants.small,
          ),
          Icon(
            Icons.search,
            size: 28,
          ),
          UniversalSpacer(
            width: SpacerConstants.small,
          ),
          Icon(
            Icons.menu,
            size: 28,
          ),
          UniversalSpacer(
            width: SpacerConstants.standard,
          )
        ],
      ),
      body: Obx(
        () => [
          const HomeView(),
          const LeadsView(),
          const QuotesView(),
          const ProfileView()
        ][controller.selectedTab.value],
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: controller.selectedTab.value,
          onTap: (index) => controller.selectedTab.value = index,
          selectedItemColor: AppTheme.theme.primaryColor,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.people_outline), label: "Leads"),
            BottomNavigationBarItem(
                icon: Icon(Icons.luggage_outlined), label: "Quotes"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_2_outlined), label: "Profile"),
          ],
        ),
      ),
    );
  }
}
