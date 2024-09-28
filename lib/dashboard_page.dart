import 'package:assignment/constants/colors.dart';
import 'package:assignment/controllers/homepage_controller.dart';
import 'package:assignment/home_page.dart';
import 'package:assignment/portfollio_page.dart';
import 'package:assignment/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'input_page.dart';

class DashboardPage extends StatelessWidget {
  DashboardPage({super.key});

  final HomePageController hpc = Get.put(HomePageController());

  final List pages = [
    const HomePage(),
    const PortfollioPage(),
    const InputPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => pages[hpc.selectedTab.value],
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: primaryColor,
          unselectedItemColor: Colors.grey,
          currentIndex: hpc.selectedTab.value,
          onTap: (value) {
            hpc.selectedTab.value = value;
          },
          items: const [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home_rounded),
            ),
            BottomNavigationBarItem(
              label: 'Portfolio',
              icon: Icon(Icons.work_rounded),
            ),
            BottomNavigationBarItem(
              label: 'Input',
              icon: Icon(Icons.assignment_add),
            ),
            BottomNavigationBarItem(
              label: 'Profile',
              icon: Icon(Icons.person_rounded),
            ),
          ],
        ),
      ),
    );
  }
}
