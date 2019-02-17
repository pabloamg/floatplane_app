import 'package:floatplane/config/global_keys.dart';
import 'package:floatplane/config/routes.dart';
import 'package:floatplane/config/ui_data.dart';
import 'package:floatplane/views/login/login_page.dart';
import 'package:flutter/material.dart';

class FPApp extends StatelessWidget {
  final Iterable<LocalizationsDelegate> localizationsDelegates;
  FPApp(this.localizationsDelegates);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Float Plane',
        navigatorKey: mainNavigatorKey,
        routes: routes,
        theme: UIData.themeData(context),
        home: LoginPage());
  }
}
