import 'package:floatplane/config/ui_data.dart';
import 'package:floatplane/data_factory/app_state.dart';
import 'package:floatplane/data_factory/models/user/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: UIData.menuColor,
        child: Theme(
          data: Theme.of(context).copyWith(
              textTheme: Theme.of(context).textTheme.copyWith(
                    body2: TextStyle(color: Colors.white),
                  )),
          child: Column(
            children: <Widget>[
              DrawerHeader(
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.only(left: 40.0, right: 40.0),
                    child: SvgPicture.network(
                        'https://frontend.floatplanecdn.com/2.7.5/assets/images/layout/logo-floatplane.svg'),
                  ),
                ),
              ),
              Expanded(
                  child: ListView(
                shrinkWrap: true,
                children: <Widget>[
                  Container(
                    height: 80.0,
                    color: UIData.selectedMenuOptionColor,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          left: 0,
                          child: Container(
                            width: 5.0,
                            height: 80.0,
                            color: UIData.accentColor,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 30.0, top: 15, bottom: 15.0),
                          child: Row(
                            children: <Widget>[
                              CircleAvatar(
                                backgroundColor: UIData.menuColor,
                                child: Icon(Icons.view_carousel),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 16.0),
                                child: Text(
                                  'Browse Creators',
                                  style: TextStyle(color: Colors.white),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: StoreConnector<AppState, User>(
                    converter: (store) => store.state.user,
                    builder: (BuildContext context, User user) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          CircleAvatar(
                            child: CachedNetworkImage(
                              imageUrl: user.profileImage.path,
                              placeholder: new CircularProgressIndicator(),
                              errorWidget: new Icon(Icons.error),
                            ),
                          ),
                          FlatButton(
                            child: Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: Text(user.username,
                                  style: TextStyle(color: Colors.white)),
                            ),
                            onPressed: () => Navigator.of(context)
                                .pushNamed(UIData.profileRoute),
                          ),
                          Expanded(
                            child: Container(),
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.settings,
                              color: Colors.white,
                            ),
                            onPressed: () => Navigator.of(context)
                                .pushNamed(UIData.settingsRoute),
                          )
                        ],
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
