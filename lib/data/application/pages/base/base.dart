import 'package:doa/data/application/core/sevices/theme_service.dart';
import 'package:doa/data/application/pages/base/body_page.dart';
import 'package:doa/data/application/pages/base/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PageMain extends StatelessWidget {
  const PageMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My App'),
        // automaticallyImplyLeading: false,
        // actions: [
        //   Switch(
        //       value: Provider.of<ThemeService>(context).isDarkModeOn,
        //       onChanged: (_) {
        //         Provider.of<ThemeService>(context, listen: false).toggleTheme();
        //       })
        // ],
      ),
      drawer: const Drawer(
        child: AppDrawer(),
      ),
      body: const BodyPage(),
    );
  }
}
