import 'package:flutter/material.dart';
import 'package:on_time_app/core/utils/colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:on_time_app/features/home/favorite_page.dart';
import 'package:on_time_app/features/home/help_page.dart';
import 'package:on_time_app/features/home/home_page.dart';
import 'package:on_time_app/features/home/menu_page.dart';
import 'package:on_time_app/features/home/order_page.dart';
import 'package:on_time_app/features/home/widgets/action_icon.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int index = 0;

  List<Widget> pages = const [
    HomePage(),
    MenuPage(),
    FavoritePage(),
    OrderPage(),
    HelpPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondaryColor,
      appBar: AppBar(
        backgroundColor: AppColors.secondaryColor,
        title: Container(
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          padding: const EdgeInsets.only(left: 16, right: 5),
          child: Row(
            children: [
              const Expanded(
                child: Text(
                  'Search',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
              ),
              Container(
                height: 30,
                width: 30,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.secondaryColor,
                ),
                child: const Icon(
                  FontAwesomeIcons.sliders,
                  color: Colors.white,
                  size: 18,
                ),
              ),
            ],
          ),
        ),
        actions: [
          ActionIcon(
            icon: Icons.shopping_cart_outlined,
            onPressed: () {},
          ),
          ActionIcon(
            icon: FontAwesomeIcons.bell,
            onPressed: () {},
          ),
          ActionIcon(
            icon: FontAwesomeIcons.user,
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(40),
            topLeft: Radius.circular(40),
          ),
          color: Colors.white,
        ),
        padding: EdgeInsets.only(
          top: 20,
          left: 16,
          right: 16,
        ),
        child: pages[index],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (val) {
          setState(() {
            index = val;
          });
        },
        backgroundColor: AppColors.mainColor,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: 24,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.house,
              color: index != 0 ? Colors.white38 : Colors.white,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.fastfood_outlined,
              color: index != 1 ? Colors.white38 : Colors.white,
            ),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border,
              color: index != 2 ? Colors.white38 : Colors.white,
            ),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.list,
              color: index != 3 ? Colors.white38 : Colors.white,
            ),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.headset,
              color: index != 4 ? Colors.white38 : Colors.white,
            ),
            label: 'Favorite',
          ),
        ],
      ),
    );
  }
}
