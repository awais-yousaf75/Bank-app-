import 'package:bank/screens/home_screen.dart';
import 'package:bank/screens/message_screen.dart';
import 'package:bank/screens/search_screen.dart';
import 'package:bank/screens/settings_screen.dart';
import 'package:bank/utilities/colors.dart';
import 'package:flutter/material.dart';

class CustomNavBar extends StatefulWidget {
  const CustomNavBar({super.key});
  @override
  CustomNavBarState createState() => CustomNavBarState();
}

class CustomNavBarState extends State<CustomNavBar> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    SearchScreen(),
    MessageScreen(),
    SettingsScreen()  // Placeholder
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body:_screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        backgroundColor: white,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: _selectedIndex==0?Icon(Icons.home):Icon(Icons.home_outlined),

            label: "Home",
            backgroundColor: primaryColor,
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex==1?Icon(Icons.search):Icon(Icons.search),
            label: "Search",
            backgroundColor: primaryColor,
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex==3?Icon(Icons.mail):Icon(Icons.mail_outline_rounded),
            label: "Messages",
            backgroundColor: primaryColor,
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex==4?Icon(Icons.settings):Icon(Icons.settings_outlined),
            label: "Settings",
            backgroundColor: primaryColor,
          ),


        ],

      )

    );

  }
}
