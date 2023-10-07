import 'package:flutter/material.dart';
import 'package:wattwatch_v1/pages/login.dart';
import 'package:wattwatch_v1/pages/coupons.dart';
import 'package:wattwatch_v1/pages/maps.dart';
import 'package:wattwatch_v1/pages/profile.dart';
import 'package:wattwatch_v1/pages/rewards.dart';
import 'package:wattwatch_v1/pages/dashboard.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() {
  dotenv.load();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Login(),
    );
  }
}

