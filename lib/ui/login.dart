import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatefulWidget {
  @override
  LoginPageState createState() => new LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: SvgPicture.asset(
              'assets/logos/floatplane.svg',
              color: Colors.white,
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.account_circle, color: Colors.white,),
                      hintText: 'you@example.com',
                      hintStyle: TextStyle(
                        color: Colors.white,
                      ),
                      enabledBorder: InputBorder.none,
                    ),
                    style: TextStyle(
                      color: Colors.white
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.vpn_key, color: Colors.white),
                      hintText: 'Password',
                      enabledBorder: InputBorder.none,
                      hintStyle: TextStyle(
                        color: Colors.white
                      ),
                    ),
                    style: TextStyle(
                      color: Colors.white
                    ),
                  ),
                  FlatButton(
                    onPressed: () => Navigator.pushReplacementNamed(context, '/browse'),
                    child: Container(
                      height: 40,
                      width: 100,
                      margin: EdgeInsets.only(top: 10, left: 100),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                        shape: BoxShape.rectangle,
                        boxShadow: <BoxShadow> [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 8,
                            offset: Offset(8.0, 8.0)
                          )
                        ]
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          'Login',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}