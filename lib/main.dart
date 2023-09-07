import 'package:flutter/material.dart';
import 'package:rizwan_app/desktopPage/desk_login_page.dart';
import 'package:rizwan_app/pages/login_page.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.sizeOf(context));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.minWidth > 1200) {
            return DeskLoginPage();
          } else if (constraints.maxWidth > 450 &&
              constraints.maxWidth < 1200) {
            return DeskLoginPage();
          } else {
            return LoginPage();
          }
        },
      ),
    );
  }
}
