import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Home.dart';
import 'Cart.dart';
import 'Account.dart';


void main() {
  runApp(const BookStoreApp());
}

class BookStoreApp extends StatelessWidget {
  const BookStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Book Store',
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 254, 201, 132),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 254, 201, 132),
          foregroundColor: Colors.black,
          elevation: 0,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Color.fromARGB(255, 254, 201, 132),
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
        ),
      ),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  final List<Widget> pages = const [
    HomePage(),
    CartPage(),
    AccountPage(),
  ];

  @override
  Widget build(BuildContext context) {
    final RxInt selectedIndex = 0.obs;

    return Obx(() => Scaffold(
          body: pages[selectedIndex.value],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedIndex.value,
            onTap: (index) => selectedIndex.value = index,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Cart'),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
            ],
          ),
        ));
  }
}
