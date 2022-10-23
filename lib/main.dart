import 'package:doa/data/application/core/sevices/theme_service.dart';
import 'package:doa/data/application/pages/chat/chat.dart';
import 'package:doa/data/application/pages/doa/doa.dart';
import 'package:doa/data/application/pages/kajian/kajian.dart';
import 'package:doa/data/application/pages/base/base.dart';
import 'package:doa/data/application/pages/poster/poster.dart';
import 'package:doa/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeService(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeService>(builder: (context, themeService, child) {
      return MaterialApp(
        themeMode: themeService.isDarkModeOn ? ThemeMode.dark : ThemeMode.light,
        // theme: AppTheme.lightTheme,
        theme: ThemeData(
          colorSchemeSeed: const Color(0xff6750a4),
          useMaterial3: true,
        ),
        darkTheme: AppTheme.darkTheme,
        home: const PageMain(),
        routes: <String, WidgetBuilder>{
          '/poster': (BuildContext context) => const Poster(),
          '/kajian': (BuildContext context) => const Kajian(),
          '/doa': (BuildContext context) => const Doa(),
          '/chat': (BuildContext context) => const ChatPage(),
        },
      );
    });
  }
}
