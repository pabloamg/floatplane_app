import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {

  String _animation = 'Intro';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlareActor(
        'assets/animations/floatplane-logo.flr',
        animation: _animation,
        callback: (s) {
          switch(s) {
            case 'Intro':
              setState(() {
                _animation = 'Outro';
              });
              break;
            case 'Outro':
              Navigator.pushReplacementNamed(context, '/login');
              break;
            default:
              Navigator.pushReplacementNamed(context, '/login');
              break;
          }
        },
      ),
      backgroundColor: Color(0xFF2D4057),
    );
  }
}