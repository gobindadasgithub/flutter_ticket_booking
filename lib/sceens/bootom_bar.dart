import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_booking/sceens/home_sceen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selestedIndex=0;
  static final List<Widget> _widgetOptions=<Widget>[

    HomeSceen(),
const Text('Search'),
const Text('Ticket'),
const Text('Profile'),
  ];

  void _onIteamTapped(int index){
 setState(() {
   _selestedIndex=index;
 });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body:Center(
        child:_widgetOptions[_selestedIndex] ,
      ) ,

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selestedIndex,
        onTap: _onIteamTapped,
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blueGrey,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: const Color(0xFF526688),

        items: const [
        BottomNavigationBarItem(
          icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
          activeIcon:Icon(FluentSystemIcons.ic_fluent_home_filled),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
          activeIcon:Icon(FluentSystemIcons.ic_fluent_search_filled),
          label: "Search",
        ),

        BottomNavigationBarItem(
          icon: Icon(FluentSystemIcons.ic_fluent_airplane_regular),
          activeIcon:Icon(FluentSystemIcons.ic_fluent_airplane_filled),
          label: "Ticket",
        ),

        BottomNavigationBarItem(
          icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
          activeIcon:Icon(FluentSystemIcons.ic_fluent_person_filled),
          label: "Profile",
        ),


      ],),
    );
  }
}
