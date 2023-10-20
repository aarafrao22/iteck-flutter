import 'package:flutter/material.dart';

class HomeActivity extends StatefulWidget {
  const HomeActivity(
      {super.key, required String title, required String param_homepage});

  @override
  State<HomeActivity> createState() => _HomeActivityState();
}

class _HomeActivityState extends State<HomeActivity> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body: Center(
        child: Text("Hello"),
      ),
    ));
  }
}
