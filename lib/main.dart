import 'package:flutter/material.dart';
import 'package:floatplane_app/style/theme.dart';

import 'package:floatplane_app/ui/home.dart';
import 'package:floatplane_app/ui/login.dart';
import 'package:floatplane_app/ui/browse.dart';
import 'package:floatplane_app/ui/user.dart';
import 'package:flutter/services.dart';

void main() => runApp(FloatPlaneApp());

class FloatPlaneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: colorDarker,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarIconBrightness: Brightness.light,
    ));
    return new MaterialApp(
      title: 'Floatplane',
      initialRoute: '/',
      routes: {
        /*
        * These routes are for generic pages that don't have constructors.
        * Pages that require constructors are navigated to using MaterialPageRoutes.
        */

        // General Pages
        '/': (BuildContext context) => new HomePage(),
        '/login': (BuildContext context) => new LoginPage(),

        // User Pages
        '/user/': (BuildContext context) => null,
        '/user/settings': (BuildContext context) => new UserSettingsPage(),
        '/user/settings/app': (BuildContext context) => null,
        '/user/settings/account': (BuildContext context) => null,
        '/user/settings/subscriptions': (BuildContext context) => null,
        '/user/settings/connected-accounts': (BuildContext context) => null,
        '/user/settings/billing': (BuildContext context) => null,
        '/user/settings/invoices': (BuildContext context) => null,
        '/user/settings/security': (BuildContext context) => null,
        // Browse Pages
        '/browse': (BuildContext context) => new BrowsePage(),
      },
      theme: getTheme(),
    );
  }
}