import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tekan/src/pages/account_page.dart';
import 'package:tekan/src/pages/basket_page.dart';
import 'package:tekan/src/pages/recent_page.dart';
import 'package:tekan/src/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _page = 0;
  PageController _pageController = PageController(initialPage: 0);

  List<Widget> widgetOptions = <Widget>[
    ShopPage(),
    RecentPage(),
    BasketPage(),
    AccountPage(),
  ];

  void onTabTapped(index) {
    _pageController.animateToPage(index,
        duration: const Duration(milliseconds: 300), curve: Curves.ease);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: PageView.builder(
          controller: _pageController,
          onPageChanged: onPageChanged,
          itemCount: widgetOptions.length,
          itemBuilder: (context, index) {
            return widgetOptions[index];
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).accentColor,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.w700),
        elevation: 0,
        onTap: onTabTapped,
        currentIndex: _page,
        items: [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.app_badge),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.square_on_square),
            label: 'Rencente',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.shopping_cart),
            label: 'Panier',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.person,
            ),
            label: 'Compte',
          ),
        ],
      ),
    );
  }

  void onPageChanged(int page) {
    setState(() {
      this._page = page;
    });
  }

  @override
  void initState() {
    super.initState();
    _pageController = new PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }
}
