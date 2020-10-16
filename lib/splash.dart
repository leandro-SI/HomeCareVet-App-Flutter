import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home.dart';
import 'dart:async';
import 'package:home_care_veterinario/screens/login_screen.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(Duration(seconds: 5), (){
      Navigator.push(context, MaterialPageRoute(
        builder: (context)=>LoginScreen(),
      ));
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "images/splash_image.png",
            fit: BoxFit.contain,
            height: 1000.0,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(100.0, 60.0, 60.0, 35.0),
            child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text('Carregando App ...',
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5.0,),
              CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(Colors.blue),
                strokeWidth: 10.0,
              )
            ],
          ), 
          ),

        ],
      ),
    );
  }
}
