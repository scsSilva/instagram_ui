import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_instagram/pages/account_page.dart';
import 'package:ui_instagram/pages/explorer_page.dart';
import 'package:ui_instagram/pages/home_page.dart';
import 'package:ui_instagram/pages/like_page.dart';
import 'package:ui_instagram/pages/upload_page.dart';

class WrapperPage extends StatefulWidget {
  const WrapperPage({Key? key}) : super(key: key);

  @override
  _WrapperPageState createState() => _WrapperPageState();
}

class _WrapperPageState extends State<WrapperPage> {
  int _pageIndex = 0;

  final _pages = [
    HomePage(),
    ExplorerPage(),
    UploadPage(),
    LikePage(),
    AccountPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_pageIndex],
      // bottomNavigationBar: BottomNavigationBar(
      //   showSelectedLabels: false,
      //   showUnselectedLabels: false,
      //   currentIndex: _pageIndex,
      //   onTap: (int index) {
      //     setState(() {
      //       _pageIndex = index;
      //     });
      //   },
      //   items: [
      //     BottomNavigationBarItem(
      //       activeIcon: SvgPicture.asset('assets/images/home_active_icon.svg'),
      //       icon: SvgPicture.asset('assets/images/home_icon.svg'),
      //       label: 'Feed',
      //     ),
      //     BottomNavigationBarItem(
      //       activeIcon:
      //           SvgPicture.asset('assets/images/search_active_icon.svg'),
      //       icon: SvgPicture.asset('assets/images/search_icon.svg'),
      //       label: 'Search',
      //     ),
      //     BottomNavigationBarItem(
      //       activeIcon:
      //           SvgPicture.asset('assets/images/upload_active_icon.svg'),
      //       icon: SvgPicture.asset('assets/images/upload_icon.svg'),
      //       label: 'Upload',
      //     ),
      //     BottomNavigationBarItem(
      //       activeIcon: SvgPicture.asset('assets/images/love_active_icon.svg'),
      //       icon: SvgPicture.asset('assets/images/love_icon.svg'),
      //       label: 'Likes',
      //     ),
      //     BottomNavigationBarItem(
      //       activeIcon:
      //           SvgPicture.asset('assets/images/account_active_icon.svg'),
      //       icon: SvgPicture.asset('assets/images/account_icon.svg'),
      //       label: 'Account',
      //     ),
      //   ],
      // ),
      bottomNavigationBar: bottomNavigation(),
    );
  }

  Widget bottomNavigation() {
    List _icons = [
      _pageIndex == 0
          ? 'assets/images/home_active_icon.svg'
          : 'assets/images/home_icon.svg',
      _pageIndex == 1
          ? 'assets/images/search_active_icon.svg'
          : 'assets/images/search_icon.svg',
      _pageIndex == 2
          ? 'assets/images/upload_active_icon.svg'
          : 'assets/images/upload_icon.svg',
      _pageIndex == 3
          ? 'assets/images/love_active_icon.svg'
          : 'assets/images/love_icon.svg',
      _pageIndex == 4
          ? 'assets/images/account_active_icon.svg'
          : 'assets/images/account_icon.svg'
    ];

    return Container(
      width: double.infinity,
      height: 70,
      decoration: BoxDecoration(
        color: ThemeData.dark().primaryColorDark,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(_icons.length, (index) {
            return InkWell(
              onTap: () {
                setState(() {
                  _pageIndex = index;
                });
              },
              child: SvgPicture.asset(
                _icons[index],
                width: 25,
              ),
            );
          }),
        ),
      ),
    );
  }
}
