import 'package:doa/data/application/core/widget/profile_image.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/149.jpg'),
                fit: BoxFit.none,
                scale: 5.0,
              ),
            ),
            child: ProfileImage(),
          ),
          ListTile(
            leading: const Icon(Icons.message),
            title: const Text('Doa'),
            onTap: () {
              Navigator.pushNamed(context, '/doa');
            },
          ),
          ListTile(
              leading: const Icon(Icons.account_circle),
              title: const Text('Kajian'),
              onTap: () {
                // print('Tapped');
              }),
          ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                // print('Tapped');
              }),
          ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Chat'),
              onTap: () {
                Navigator.pushNamed(context, '/chat');
              }),
        ],
      ),
    );
  }
}
