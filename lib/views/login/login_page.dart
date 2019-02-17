import 'dart:async';

import 'package:floatplane/behaviours/connecting-dots.dart';
import 'package:floatplane/config/ui_data.dart';
import 'package:floatplane/data_factory/store.dart';
import 'package:flutter/material.dart';
import 'package:animated_background/animated_background.dart';
import 'package:floatplane/data_factory/actions/actions.dart' as actions;
import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {
  @override
  LoginPageState createState() {
    return new LoginPageState();
  }
}

class LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  String email;
  String password;
  bool _loading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UIData.LoginBgColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: SafeArea(
        bottom: false,
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/bg_login.png'),
            ),
          ),
          child: Stack(
            children: <Widget>[
//              AnimatedBackground(
//                behaviour: RandomMeshParticleBehaviour(
//                    options: MeshParticleOptions(
//                        baseColor: UIData.accentColor,
//                        particleCount: 15,
//                        minOpacity: 0.1,
//                        maxOpacity: 0.8,
//                        spawnMinRadius: 3.0,
//                        spawnMaxRadius: 3.0,
//                        spawnMaxSpeed: 30.0,
//                        spawnMinSpeed: 10)),
//                vsync: this,
//                child: Container(),
//              ),
              Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'FLOATPLANE',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 32.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'SIGN IN',
                      style:
                          TextStyle(color: UIData.accentColor, fontSize: 16.0),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                    ),
                    LoginInput(
                      icon: Icons.person,
                      hint: 'Username or email',
                      onSave: (value) => email = value,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        LoginInput(
                          icon: Icons.vpn_key,
                          hint: 'Password',
                          onSave: (value) => password = value,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Text(
                            'Forgoten your password?',
                            style:
                                TextStyle(color: Colors.white.withOpacity(0.8)),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.all(12.0),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            'Need an account? Sign up',
                            style:
                                TextStyle(color: Colors.white.withOpacity(0.8)),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 8.0),
                          ),
                          OutlineButton(
                            borderSide: BorderSide(
                              color: UIData.accentColor,
                            ),
                            splashColor: UIData.accentColor,
                            highlightedBorderColor: UIData.accentColor,
                            onPressed: _submit,
                            child: Text(
                              'Sign in',
                              style: TextStyle(color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(4.0),
                    ),
                    Container(
                      width: double.infinity,
                      height: 50.0,
                      padding: EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.05),
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        child: Center(
                            child: Text(
                          'More sign-in Options ',
                          style:
                              TextStyle(color: Colors.white.withOpacity(0.40)),
                        )),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _submit() {
    FormState form = _formKey.currentState;

    if (form.validate()) {
      form.save();
      setState(() {
        _loading = true;
      });
      Completer completer = new Completer();
      completer.future.whenComplete(() {
        setState(() {
          _loading = false;
        });
      });
      actions.Login action = actions.Login(
          username: email, password: password, completer: completer);
      store.dispatch(action);
    }
  }
}

class LoginInput extends StatelessWidget {
  final String hint;
  final IconData icon;
  final Function onSave;
  LoginInput({this.hint, this.icon, this.onSave});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
        ),
        child: Row(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: UIData.attentionColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5.0),
                    bottomLeft: Radius.circular(5.0)),
              ),
              width: 50.0,
              height: 50.0,
              child: Center(
                child: Container(
                  width: 28.0,
                  height: 28.0,
                  decoration: BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: Center(
                    child: Icon(
                      icon,
                      color: UIData.attentionColor,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: TextFormField(
                onSaved: (val) => onSave(val),
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(8.0),
                    hintText: hint,
                    hintStyle:
                        TextStyle(color: UIData.attentionColor, fontSize: 16.0),
                    border: InputBorder.none),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
