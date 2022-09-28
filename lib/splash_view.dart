import 'dart:async';

import 'package:facebook_clone/login_screen.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);
  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

  @override
  void initState() {
    Timer(const Duration(seconds: 4), ()=>Navigator.push(context, MaterialPageRoute(builder: (context) => const LogInScreen(),)) );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircleAvatar(
        radius: 70,
        backgroundImage:  AssetImage('images/facebook_logo.png'),
            ),
      ),
    );
  }
}