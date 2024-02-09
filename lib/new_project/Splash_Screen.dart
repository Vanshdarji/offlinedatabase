import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:helloohoney/new_project/login_page.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}
class _SplashState extends State<Splash> {
  changescreen() {
    Timer(Duration(seconds: 5), () {
      Get.to(Login_Page());
    });
  }
  @override
  void initState() {
    changescreen();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Icon(
          Icons.book,
          size: 120,
          color: Colors.black,
        ),
      ),
    );
  }
}
