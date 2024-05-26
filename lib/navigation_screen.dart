import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:x_sport_dashboard_app/core/utils/constants/colors.dart';
import 'package:x_sport_dashboard_app/features/personal_profile/ui/personal_profile_screen.dart';
import 'package:x_sport_dashboard_app/features/schedule/ui/schedule_screen.dart';

class NavigationItem {
  final IconData icon;
  final String title;
  final Widget content;

  const NavigationItem({
    required this.icon,
    required this.title,
    required this.content,
  });
}

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int selectedIndex = 0;
  final List<NavigationItem> items = [
    const NavigationItem(
      icon: Icons.grid_view_outlined,
      title: 'reservation_schedule',
      content: ScheduleScreen(),
    ),
    const NavigationItem(
      icon: Icons.account_circle_outlined,
      title: 'Personal profile',
      content: PersonalProfileScreen(),
    ),
    const NavigationItem(
      icon: Icons.bar_chart_outlined,
      title: 'reports',
      content: Center(
        child: Text('Reports'),
      ),
    ),
    const NavigationItem(
      icon: Icons.handshake,
      title: 'partnership_ads',
      content: Center(
        child: Text('Partnership Ads'),
      ),
    ),
    const NavigationItem(
      icon: Icons.menu,
      title: 'menu',
      content: Center(child: Text('Menu')),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: selectedIndex,
        children: items.map((item) => item.content).toList(),
      ),
      bottomNavigationBar: ColoredBox(
        color: ColorsManager.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15.0,
            vertical: 20.0,
          ),
          child: GNav(
            backgroundColor: ColorsManager.white,
            activeColor: ColorsManager.white,
            tabBackgroundColor: ColorsManager.primary,
            padding: const EdgeInsets.all(8),
            onTabChange: (index) => setState(() => selectedIndex = index),
            gap: 8,
            tabs: items.map((item) => _buildGButton(item)).toList(),
          ),
        ),
      ),
    );
  }

  GButton _buildGButton(NavigationItem item) {
    return GButton(
      icon: item.icon,
      text: context.tr(item.title),
    );
  }
}
