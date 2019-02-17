import 'package:cached_network_image/cached_network_image.dart';
import 'package:floatplane/config/ui_data.dart';
import 'package:floatplane/data_factory/app_state.dart';
import 'package:floatplane/data_factory/models/user/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        backgroundColor: UIData.colorPrimaryBackground,
        body: StoreConnector<AppState, User>(
          converter: (Store store) => store.state.user,
          builder: (BuildContext context, user) {
            return ListView(children: <Widget>[
              Stack(
                children: <Widget>[
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 172.5),
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 200),
                    height: 30,
                    decoration: BoxDecoration(color: Colors.white),
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 175),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          image: DecorationImage(
                              image: CachedNetworkImageProvider(
                                  user.profileImage.childImages.first.path),
                              fit: BoxFit.fill)),
                    ),
                  )
                ],
              ),
              Container(
                height: 50,
                decoration: BoxDecoration(color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: Text(
                    user.username,
                    style: TextStyle(fontFamily: 'Helvetica', fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Container(
                height: 100,
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.0),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: Colors.black26,
                          blurRadius: 5,
                          offset: Offset(8.0, 8.0))
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Acitvity',
                        style: TextStyle(fontFamily: 'Helvetica', fontSize: 18),
                      ),
                    ),
                    Container(
                      height: 1.5,
                      width: 40,
                      margin: EdgeInsets.only(left: 10),
                      color: Colors.black12,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'JoeZwet has no recent acitvity... :(',
                        style: TextStyle(fontFamily: 'Helvetica'),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 100,
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.0),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: Colors.black26,
                          blurRadius: 5,
                          offset: Offset(8.0, 8.0))
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Playlists',
                        style: TextStyle(fontFamily: 'Helvetica', fontSize: 18),
                      ),
                    ),
                    Container(
                      height: 1.5,
                      width: 40,
                      margin: EdgeInsets.only(left: 10),
                      color: Colors.black12,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'You haven\'t added any playlists yet.',
                        style: TextStyle(fontFamily: 'Helvetica'),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 100,
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.0),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: Colors.black26,
                          blurRadius: 5,
                          offset: Offset(8.0, 8.0))
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Subscriptions',
                        style: TextStyle(fontFamily: 'Helvetica', fontSize: 18),
                      ),
                    ),
                    Container(
                      height: 1.5,
                      width: 40,
                      margin: EdgeInsets.only(left: 10),
                      color: Colors.black12,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'You haven\'t made any subscriptions publicly visable yet.',
                        style: TextStyle(fontFamily: 'Helvetica'),
                      ),
                    )
                  ],
                ),
              )
            ]);
          },
        ));
  }
}
