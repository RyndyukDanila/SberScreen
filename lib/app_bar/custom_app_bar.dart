import 'package:flutter/material.dart';
import 'package:sber_screen/app_bar/app_bar_profile.dart';
import 'package:sber_screen/model/profile.dart';
import 'package:sber_screen/static/custom_icons.dart';
import 'package:sber_screen/static/text_styles.dart';
import 'package:sber_screen/static/ui_text.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required TabController tabController,
    required bool innerBoxIsScrolled,
    required Profile profile,
  })  : _profile = profile,
        _tabController = tabController,
        _innerBoxIsScrolled = innerBoxIsScrolled;

  final TabController _tabController;
  final bool _innerBoxIsScrolled;
  final Profile _profile;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.white,
      toolbarHeight: 200,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Image(image: CustomIcons.close),
          ),
          AppBarProfile(profile: _profile),
          IconButton(
            onPressed: () {},
            icon: const Image(image: CustomIcons.arrowForward),
          ),
        ],
      ),
      pinned: true,
      floating: true,
      forceElevated: _innerBoxIsScrolled,
      bottom: TabBar(
        labelColor: Colors.black,
        unselectedLabelColor: Colors.grey,
        labelStyle: TextStyles.tabLabel,
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorColor: const Color(0xFF068441),
        tabs: const <Tab>[
          Tab(
            text: UIText.profile,
            height: 56,
          ),
          Tab(
            text: UIText.settings,
            height: 56,
          ),
        ],
        controller: _tabController,
      ),
    );
  }
}
