import 'package:app_teste/tabs/home_tab.dart';
import 'package:app_teste/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:app_teste/tabs/productsTab.dart';

class HomeScreen extends StatelessWidget {

  final _pageController = PageController();


  @override
  Widget build(BuildContext context) {

    return PageView(
      controller: _pageController,
      physics: NeverScrollableScrollPhysics(),
      children: <Widget>[
        Scaffold(
          body: HomeTab(),
          drawer: CustomDrawer(_pageController),
        ),
        Scaffold(
        appBar : AppBar(
          title : Text("produtos"),
          centerTitle: true,
        ),
          drawer: CustomDrawer(_pageController),
          body: ProductsTab(),
        ),
      ],
    );
  }
}
