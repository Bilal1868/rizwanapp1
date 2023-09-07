import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:rizwan_app/pages/home_page.dart';
import 'package:rizwan_app/pages/location_page.dart';
import 'package:rizwan_app/pages/profile.dart';

import 'constant/const.dart';
import 'pages/menu.dart';

PersistentTabController _controller = PersistentTabController(initialIndex: 0);

class MyMainPage extends StatelessWidget {
  const MyMainPage({super.key});

  List<Widget> _myScreens() {
    return [
      MyHomePage(),
      MyLocationPage(),
      MyHomePage(),
      MenuPage(),
      ProfilePage(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      padding: NavBarPadding.only(
        bottom: defaultSize / 2,
        top: 3,
        right: defaultSize,
        left: defaultSize,
      ),
      navBarHeight: defaultSize3 + defaultSize,
      context,
      controller: _controller,
      screens: _myScreens(),
      items: _navBarItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardShows: true,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(defaultSize1),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties(
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style15,
    );
  }

  List<PersistentBottomNavBarItem> _navBarItems() {
    return [
      PersistentBottomNavBarItem(
        inactiveIcon: Image.asset(
          'images/icons/ic_m_home_inactive.png',
          width: defaultSize3 / 2,
        ),
        icon: Image.asset(
          'images/icons/ic_m_home_active.png',
          width: defaultSize3 / 2,
        ),
        title: 'Home',
        activeColorSecondary: Color.fromARGB(255, 2, 121, 6),
      ),
      PersistentBottomNavBarItem(
        inactiveIcon: Image.asset(
          'images/icons/ic_m_location_inactive.png',
          width: defaultSize3 / 2,
        ),
        icon: Image.asset(
          'images/icons/ic_m_location_active.png',
          width: defaultSize3 / 2,
        ),
        title: 'Location',
        activeColorSecondary: Color.fromARGB(255, 2, 121, 6),
      ),
      PersistentBottomNavBarItem(
        inactiveIcon: Image.asset(
          'images/icons/ic_m_deals_active.png',
          // height: 80,
          //width: 50,
        ),
        icon: Image.asset(
          'images/icons/ic_m_deals_inactive.png',
          // height: 80,
          //width: 50,
        ),
        activeColorPrimary: Colors.white,
        title: 'Coffee Deals',
        activeColorSecondary: Color.fromARGB(255, 2, 121, 6),
      ),
      PersistentBottomNavBarItem(
        inactiveIcon: Image.asset(
          'images/icons/ic_m_menu_inactive.png',
          width: defaultSize3 / 2,
        ),
        icon: Image.asset(
          'images/icons/ic_m_menu_active.png',
          width: defaultSize3 / 2,
        ),
        title: 'Menu',
        activeColorSecondary: Color.fromARGB(255, 2, 121, 6),
      ),
      PersistentBottomNavBarItem(
        inactiveIcon: Image.asset(
          'images/icons/ic_m_profile_inactive.png',
          width: defaultSize3 / 2,
        ),
        icon: Image.asset(
          'images/icons/ic_m_profile_active.png',
          width: defaultSize3 / 2,
        ),
        title: 'Profile',
        activeColorSecondary: Color.fromARGB(255, 2, 121, 6),
      ),
    ];
  }
}
