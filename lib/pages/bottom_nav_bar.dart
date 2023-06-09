import 'package:flutter/material.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:travelling_app/core/colors.dart';
import 'package:travelling_app/core/constant.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override

  int _selectedIndex= 0;

 void _onItemsTapped(int index){
  setState(() {
    _selectedIndex=index;
  });
 } 
  Widget build(BuildContext context) {
    return  Scaffold(body: Center(
      child: pages[_selectedIndex],
    ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemsTapped,
        elevation: 20,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        unselectedItemColor: lightGrey,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: primaryColor,
        items:const [
          BottomNavigationBarItem(icon:Icon(FluentIcons.home_12_regular ),
          activeIcon: Icon(FluentIcons.home_12_filled),
          label: "Home"),
          BottomNavigationBarItem(icon:Icon(FluentIcons.search_12_regular),activeIcon: Icon(FluentIcons.search_12_filled),label: "Search"),
          BottomNavigationBarItem(icon:Icon(FluentIcons.airplane_take_off_16_regular),label: "Ticket"),
          BottomNavigationBarItem(icon:Icon(FluentIcons.person_12_regular),activeIcon: Icon(FluentIcons.person_12_filled), label: "Profile"),
        ],
        
      ),
    );
  }
}