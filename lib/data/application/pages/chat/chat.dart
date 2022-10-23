import 'package:doa/data/application/core/sevices/theme_service.dart';
import 'package:doa/data/application/pages/base/widgets/drawer.dart';
import 'package:doa/data/application/pages/chat/profile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Doa Sunnah'),
        actions: [
          Switch(
              value: Provider.of<ThemeService>(context).isDarkModeOn,
              onChanged: (_) {
                Provider.of<ThemeService>(context, listen: false).toggleTheme();
              })
        ],
      ),
      bottomNavigationBar: const RearNavigation(),
      drawer: const Drawer(
        child: AppDrawer(),
      ),
    );
  }
}

class RearNavigation extends StatefulWidget {
  const RearNavigation({super.key});

  @override
  State<RearNavigation> createState() => _RearNavigationState();
}

class _RearNavigationState extends State<RearNavigation> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.explore),
            label: 'Profile',
          ),
          NavigationDestination(
            icon: Icon(Icons.commute),
            label: 'Chat',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.bookmark),
            icon: Icon(Icons.bookmark_border),
            label: 'Setting',
          ),
        ],
      ),
      body: <Widget>[
        Container(
          // color: Colors.red,
          alignment: Alignment.center,
          child: const ChatProfilePage(),
        ),
        Container(
          color: Colors.green,
          alignment: Alignment.center,
          child: const Text('Page 2'),
        ),
        Container(
          color: Colors.blue,
          alignment: Alignment.center,
          child: const Text('Page 3'),
        ),
      ][currentPageIndex],
    );
  }
}
