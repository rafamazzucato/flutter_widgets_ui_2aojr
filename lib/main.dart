import 'package:flutter/material.dart';
import 'package:flutter_widgets_ui/screens/form.dart';
import 'package:flutter_widgets_ui/screens/principal.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      routes: {
        "/" : (context) => const PrincipalScreenWidget(),
        "/add" : (context) => FormLanguageWidget()
      },
    );
  }
}