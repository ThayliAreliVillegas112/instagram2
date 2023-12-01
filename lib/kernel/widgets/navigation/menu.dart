
import 'package:flutter/material.dart';
import 'package:instagramthayli/config/navigation/profile_stack.dart';
import 'package:instagramthayli/kernel/widgets/navigation/bottom_navigation_tab.dart';
import 'package:instagramthayli/modules/add/adapters/screens/add.dart';
import 'package:instagramthayli/modules/home/adapters/screens/home.dart';
import 'package:instagramthayli/modules/reels/adapters/screens/reels.dart';
import 'package:instagramthayli/modules/search/adapters/screens/search.dart';

class Menu extends StatefulWidget{
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu>{
  int _selectedIndex=0;

  void _onItemTapped(int index){
    setState((){
      _selectedIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index:_selectedIndex,
        children:const [Home(), Search(), Add(), Reels(), ProfileStack()],
      ),
      bottomNavigationBar: BottomNavigationTab(selectedIndex: _selectedIndex, onItemTapped:_onItemTapped ,),
    );
  }

}