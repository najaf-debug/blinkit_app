import 'package:blinkit_app/Repository/screens/cart/cartscreen.dart';
import 'package:blinkit_app/Repository/screens/category/categoryscreen.dart';
import 'package:blinkit_app/Repository/screens/home/homescreen.dart';
import 'package:blinkit_app/Repository/screens/printer/printerscreen.dart';
import 'package:blinkit_app/Repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int currentIndex = 0;
  List<Widget> pages = [
    HomeScreen(),
    CartScreen(),
    CategoryScreen(),
    PrinterScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: currentIndex, children: pages),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Uihelper.customImage(img: "home_nav.png"),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Uihelper.customImage(img: "cart_nav.png"),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Uihelper.customImage(img: "category_nav.png"),
            label: "Category",
          ),
          BottomNavigationBarItem(
            icon: Uihelper.customImage(img: "printer_nav.png"),
            label: "Printer",
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
