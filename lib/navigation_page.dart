import 'package:flutter/material.dart';
import 'package:health_app/page/calendar_page.dart';
import 'package:health_app/page/chat_page.dart';
import 'package:health_app/page/home_page.dart';
import 'package:health_app/page/profile_page.dart';
import 'package:ionicons/ionicons.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  List screen = [
    const HomePage(),
    const CalendarPage(),
    const ChatPage(),
    const ProfilePage(),
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Ionicons.home_outline),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.calendar_outline),
            label: "Calendar",
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.chatbubble_ellipses_outline),
            label: "Charts",
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.person_outline),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
