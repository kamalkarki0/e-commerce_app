import 'package:flutter/material.dart';
import 'package:my_first_app/crop_page.dart';
import 'package:my_first_app/home_page.dart';
import 'package:my_first_app/percentage_page.dart';
import 'package:my_first_app/search_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;
  final List<Widget> _selectedPage = const [
    HomePage(),
    SearchPage(),
    PercentagePage(),
    CropPage()
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My App'),
          centerTitle: true,
        ),
        body: _selectedPage[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.blue,
          onTap: (value) {
            setState(() {
              _selectedIndex = value;
              // if(_selectedIndex == 0)
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.percent), label: 'Percent'),
            BottomNavigationBarItem(icon: Icon(Icons.crop_din), label: 'Crop')
          ],
        ),
      ),
    );
  }
}
