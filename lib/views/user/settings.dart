import 'package:floatplane/config/ui_data.dart';
import 'package:flutter/material.dart';

class UserSettings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: UIData.menuColor,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text('Settings'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Account', style: TextStyle(color: Colors.white)),
            leading: Icon(Icons.account_circle, color: Colors.white),
          ),
          ListTile(
            title: Text('Subscriptions', style: TextStyle(color: Colors.white)),
            leading: Icon(Icons.beenhere, color: Colors.white),
          ),
          ListTile(
            title: Text('Connected Accounts',
                style: TextStyle(color: Colors.white)),
            leading: Icon(Icons.link, color: Colors.white),
          ),
          ListTile(
            title: Text('Billing', style: TextStyle(color: Colors.white)),
            leading: Icon(Icons.payment, color: Colors.white),
          ),
          ListTile(
            title: Text('Invoices', style: TextStyle(color: Colors.white)),
            leading: Icon(Icons.receipt, color: Colors.white),
          ),
          ListTile(
            title: Text('Security', style: TextStyle(color: Colors.white)),
            leading: Icon(Icons.security, color: Colors.white),
          ),
          ListTile(
            title: Text('App Settings', style: TextStyle(color: Colors.white)),
            leading: Icon(Icons.settings, color: Colors.white),
          ),
          ListTile(
            title: Text('Log out', style: TextStyle(color: Colors.white)),
            leading: Icon(Icons.exit_to_app, color: Colors.white),
            onTap: () => Navigator.of(context).pushNamedAndRemoveUntil(
                UIData.loginRoute, ModalRoute.withName(null)),
          )
        ],
      ),
    );
  }
}
