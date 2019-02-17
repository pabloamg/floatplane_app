import 'package:floatplane/config/ui_data.dart';
import 'package:floatplane/views/browse/browse.dart';
import 'package:floatplane/views/login/login_page.dart';
import 'package:floatplane/views/user/profile.dart';
import 'package:floatplane/views/user/settings.dart';
import 'package:flutter/material.dart';

final routes = {
  UIData.browseRoute: (BuildContext context) => WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Browse()),
  UIData.loginRoute: (BuildContext context) => WillPopScope(
        onWillPop: () async {
          return false;
        },
        child: LoginPage(),
      ),
  UIData.settingsRoute: (BuildContext context) => new UserSettings(),
  UIData.profileRoute: (BuildContext context) => new ProfilePage(),
};
