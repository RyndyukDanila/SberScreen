import 'package:flutter/material.dart';
import 'package:sber_screen/app_bar/custom_app_bar.dart';
import 'package:sber_screen/model/profile.dart';
import 'package:sber_screen/pages/profile_page.dart';
import 'package:sber_screen/pages/settings_page.dart';
import 'package:sber_screen/static/custom_colors.dart';

class HomeScreen extends StatefulWidget {
  final Profile profile;

  const HomeScreen({
    super.key,
    required this.profile,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.background,
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            CustomAppBar(
              profile: widget.profile,
              tabController: _tabController,
              innerBoxIsScrolled: innerBoxIsScrolled,
            ),
          ];
        },
        body: TabBarView(
          controller: _tabController,
          children: const <Widget>[
            ProfilePage(),
            SettingsPage(),
          ],
        ),
      ),
    );
  }
}
