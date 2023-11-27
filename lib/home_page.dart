import 'package:flutter/material.dart';
import 'package:sber_screen/app_bar/app_bar_profile.dart';
import 'package:sber_screen/model/profile.dart';

class HomePage extends StatefulWidget {
  final Profile profile;

  const HomePage({
    super.key,
    required this.profile,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: Colors.white,
              surfaceTintColor: Colors.white,
              toolbarHeight: 200,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.close_rounded,
                      color: Color(0xFF08A652),
                    ),
                  ),
                  AppBarProfile(profile: profile),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_forward_rounded,
                      color: Color(0xFF08A652),
                    ),
                  ),
                ],
              ),
              pinned: true,
              floating: true,
              forceElevated: innerBoxIsScrolled,
              bottom: TabBar(
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                labelStyle: const TextStyle(
                  fontSize: 16,
                  fontFamily: 'SF Pro Text',
                  fontWeight: FontWeight.w500,
                ),
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorColor: const Color(0xFF068441),
                tabs: const <Tab>[
                  Tab(
                    text: 'Профиль',
                    height: 56,
                  ),
                  Tab(
                    text: 'Настройки',
                    height: 56,
                  ),
                ],
                controller: _tabController,
              ),
            ),
          ];
        },
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            Text(''),
            Text(''),
          ],
        ),
      ),
    );
  }
}
