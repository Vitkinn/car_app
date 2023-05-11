import 'package:car_app/pages/car_form.dart';
import 'package:car_app/pages/cars_list_page.dart';
import 'package:car_app/pages/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Car',
      theme: ThemeData.dark(),
      initialRoute: '/login',
      routes: {
        '/login': (_) => LoginPage(),
        '/cars_list': (_) => CarListPage(),
        '/car_form': (_) => CarForm()
      },
    );
  }
}
