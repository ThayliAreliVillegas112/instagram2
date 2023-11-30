import 'package:flutter/material.dart';
import 'package:instagramthayli/kernel/theme/colors_app.dart';

class BottomNavigationTab extends StatelessWidget{
  final int selectedIndex;
  final Function(int) onItemTapped;

  const BottomNavigationTab({super.key, required this.selectedIndex, required this.onItemTapped});
  
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items:const <BottomNavigationBarItem>[
      BottomNavigationBarItem(icon: Icon(Icons.home), label:""),
      BottomNavigationBarItem(icon: Icon(Icons.search),label:""),
      BottomNavigationBarItem(icon: Icon(Icons.add_box_outlined),label:""),
      BottomNavigationBarItem(icon: Icon(Icons.video_library_outlined),label:""),
      BottomNavigationBarItem(icon: Icon(Icons.person),label:""),
    ],
      currentIndex:selectedIndex,
      selectedItemColor: ColorsApp.successColor,
      unselectedItemColor: ColorsApp.primaryColor,
      onTap: onItemTapped,

    );
  }
  
}