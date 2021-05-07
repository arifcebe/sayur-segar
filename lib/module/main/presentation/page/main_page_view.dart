import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sayur_segar/commons/ss_colors.dart';
import 'package:sayur_segar/module/main/presentation/page/home_page_view.dart';
import 'package:sayur_segar/module/main/presentation/page/profile_page_view.dart';

import 'store_page_view.dart';

class MainPageView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MainPageViewState();
  }
}

class _MainPageViewState extends State<MainPageView> {
  List<Widget> _bottomNavigationContainer;
  List<BottomNavigationBarItem> _bottomNavigationItems;
  int _tabIndex;

  @override
  void initState() {
    super.initState();
    _bottomNavigationContainer = [
      HomePageView(),
      StorePageView(),
      ProfilePageView(),
    ];

    _bottomNavigationItems = [
      BottomNavigationBarItem(icon: Icon(Icons.home),),
      BottomNavigationBarItem(icon: Icon(Icons.local_grocery_store),),
      BottomNavigationBarItem(icon: Icon(Icons.person),),
    ];

    _tabIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: primaryColor,
        ),
        body: _bottomNavigationContainer[_tabIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _tabIndex,
          onTap: (index) {
            setState(() {
              _tabIndex = index;
            });
          },
          items: _bottomNavigationItems,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.blue,
        ),
    );
  }
}
