import 'package:flutter/material.dart';
import 'achievements_tab.dart';
import 'constants/colors.dart';
import 'projects_tab.dart';
import 'saved_tab.dart';
import 'shared_tab.dart';

class PortfollioPage extends StatelessWidget {
  const PortfollioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Portfolio'),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 1,
          actions: [
            IconButton(
              onPressed: () {},
              color: primaryColor,
              icon: const Icon(Icons.work_rounded),
            ),
            IconButton(
              onPressed: () {},
              color: primaryColor,
              icon: const Icon(Icons.notifications_rounded),
            ),
          ],
          bottom: TabBar(
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              indicatorColor: primaryColor,
              tabs: const [
                Tab(
                  text: 'Project',
                ),
                Tab(
                  text: 'Saved',
                ),
                Tab(
                  text: 'Shared',
                ),
                Tab(
                  text: 'Achievement',
                ),
              ]),
        ),
        body: TabBarView(
          children: [
            ProjectsTab(),
            const SavedTab(),
            const SharedTab(),
            const AchievementsTab(),
          ],
        ),
      ),
    );
  }
}
