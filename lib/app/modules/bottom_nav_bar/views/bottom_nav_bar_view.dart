import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:multi_services/app/modules/home/views/home_view.dart';
import 'package:multi_services/app/modules/level/views/level_view.dart';
import 'package:multi_services/app/modules/notice/views/notice_view.dart';
import 'package:multi_services/app/modules/referral/views/referral_view.dart';
import 'package:multi_services/app/modules/settings/views/settings_view.dart';
import 'package:multi_services/app/theme/all_colors.dart';

class BottomNavBarView extends StatefulWidget {
  const BottomNavBarView({super.key});

  @override
  State<BottomNavBarView> createState() => _BottomNavBarViewState();
}

class _BottomNavBarViewState extends State<BottomNavBarView> {
  final pages = [
    const SettingsView(),
    const LevelView(),
    const NoticeView(),
    const ReferralView(),
    const HomeView(),
  ];
  int selectedPage = 4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(selectedPage),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: AllColors.blackColor,
       child: Image.asset('assets/images/png/bottom_nav_bar/home.png'),
       // child: Icon(Icons.home, color:  selectedPage == 4 ? Colors.yellow : Colors.white),
        onPressed: () {
          setState(() {
            selectedPage = 4; // Navigate to the Home page
          });
        },
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(), //
        notchMargin: 8.0, // Margin around the notch
        color: AllColors.blackColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedPage = 0;
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Icon(Icons.settings, color: selectedPage == 0 ? Colors.yellow : Colors.white),
                  Image.asset('assets/images/png/bottom_nav_bar/settings.png'),
                  Text('Settings',style: TextStyle(color: AllColors.whiteColor))
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedPage = 1;
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/png/bottom_nav_bar/level-up.png'),
                  //Icon(Icons.leaderboard_rounded, color: selectedPage == 1 ? Colors.yellow : Colors.white),
                  Text('Level',style: TextStyle(color: AllColors.whiteColor))
                ],
              ),
            ),
            SizedBox(width: 40), // The space for the FAB
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedPage = 2;
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/png/bottom_nav_bar/speaker.png'),
                  //Icon(Icons.announcement, color: selectedPage == 2 ? Colors.yellow : Colors.white),
                  Text('Notice',style: TextStyle(color: AllColors.whiteColor))
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedPage = 3;
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/png/bottom_nav_bar/connection.png'),
                  //Icon(Icons.person_pin_sharp, color: selectedPage == 3 ? Colors.yellow : Colors.white),
                  Text('Referral',style: TextStyle(color: AllColors.whiteColor))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



class CircularNotchShape extends NotchedShape {
  @override
  Path getOuterPath(Rect host, Rect? guest) {
    if (guest == null || !host.overlaps(guest)) {
      return Path()..addRect(host);
    }

    final notchRadius = guest.width / 2.0;

    return Path()
      ..moveTo(host.left, host.top)
      ..lineTo(guest.center.dx - notchRadius, host.top)
      ..arcToPoint(
        Offset(guest.center.dx + notchRadius, host.top),
        radius: Radius.circular(notchRadius),
        clockwise: false,
      )
      ..lineTo(host.right, host.top)
      ..lineTo(host.right, host.bottom)
      ..lineTo(host.left, host.bottom)
      ..close();
  }
}