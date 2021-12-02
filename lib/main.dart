import 'package:flutter/material.dart';
import 'package:n_plus_one/presentation/features/authentication/pages/start_page.dart';
import 'package:n_plus_one/presentation/ui_kit/colors/colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        backgroundColor: background_black,
      ),
      home: StartPage(),
    );
  }
}
