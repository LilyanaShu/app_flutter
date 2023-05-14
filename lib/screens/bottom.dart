import 'package:flutter/material.dart';
import 'package:app_flutter/screens/home_screen.dart';
import 'package:app_flutter/screens/search_screen.dart';
import 'package:app_flutter/screens/ticket_screen.dart';
import 'package:app_flutter/screens/profile_screen.dart';

class Bottom extends StatefulWidget {
  const Bottom({Key? key}) : super(key: key);

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  @override
  int _selectedIndex=0;
  static final List<Widget>_widgetOptions = <Widget>[
    const HomeScreen(),
    const SearchScreen(),
    const TicketScreen(),
    const ProfileScreen()
  ];

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;

    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      /*
      appBar: AppBar(
        title: const Text("My Tickets"),
        centerTitle: true,
      ),
       */
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        elevation: 10,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.blue,
        type: BottomNavigationBarType.fixed,
        items: const [
           BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
           BottomNavigationBarItem(icon: Icon(Icons.search_rounded), label: "Search"),
           BottomNavigationBarItem(icon: Icon(Icons.airplane_ticket), label: "Tickets"),
           BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
